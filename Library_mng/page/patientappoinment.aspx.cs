using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library_mng.AppCode;
using System.Configuration;
using System.Data.Common;

namespace Library_mng
{
    public partial class patientappoinment : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        SqlDataAdapter adapter = new SqlDataAdapter();


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_specility();
                bind_hospital();
            }
        }



        protected void bind_hospital()
        {
            try
            {
                cmd = new SqlCommand();
                cmd.CommandText = "select * from [dbo].[tbl_hospital_registration_info]";

                ds = new DataSet();
                ds = DB.get_data(cmd);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddhospital.DataSource = ds;

                    ddhospital.DataTextField = "hospital_name";
                    ddhospital.DataValueField = "hospital_id";
                    ddhospital.DataBind();
                    ddhospital.Items.Insert(0, new ListItem("<---select hospital--->", "0"));


                }


            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related hospital select " + ex.Message + "')</script>");

            }
        }




        protected void bind_specility()
        {

            try
            {

                cmd = new SqlCommand();
                cmd.CommandText = "select * from  [dbo].[tbl_speciality_info] ";
                ds = new DataSet();

                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddspecility.DataSource = ds;

                    ddspecility.DataTextField = "speciality_name";
                    ddspecility.DataValueField = "speciality_id";
                    ddspecility.DataBind();
                    ddspecility.Items.Insert(0, new ListItem("----Select speciality----", "0"));
                }

            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related speciality: " + ex.Message + "')</script>");

            }
        }

        protected void bind_doctor()
        {
            

            try
            {

                cmd = new SqlCommand();
                cmd.CommandText = "select  * from   [dbo].[tbl_doctor_registration_info] where hos_id=@hoslogin_id";

                cmd.Parameters.AddWithValue("@hoslogin_id", ddhospital.SelectedValue);


                ds = new DataSet();

                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    dddoctor.DataSource = ds;

                    dddoctor.DataTextField = "doc_fname";
                    dddoctor.DataValueField = "doc_id";
                    dddoctor.DataBind();
                    dddoctor.Items.Insert(0, new ListItem("----Select doctor----", "0"));
                }

            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related speciality: " + ex.Message + "')</script>");

            }

        }


        protected void ddhospital_SelectedIndexChanged1(object sender, EventArgs e)
        {
            bind_doctor();
        }


        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string query = "";
            int appoi = 0; // Define appoi at a broader scope to access it later

            using (SqlConnection DBcon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString))
            {
                SqlTransaction tn = null;
                DBcon.Open();

                try
                {
                    TimeSpan tim;
                    int pid = 0;
                    DateTime dob;

                    if (Session["user"] != null)
                    {
                        pid = Convert.ToInt32(Session["user"]);
                    }
                    else
                    {
                        throw new Exception("Session 'user' is null.");
                    }

                    #region registration

                    tn = DBcon.BeginTransaction();

                    // Insert into tbl_appointment_info
                    query = "INSERT INTO [dbo].[tbl_appointment_info](doc_id, patient_id, specility_id, problem_type, problem_desc, appo_date, appo_time) " +
                            "VALUES(@doc_id, @patient_id, @specility_id, @problem_type, @problem_desc, @appo_date, @appo_time)";

                    using (SqlCommand cmd = new SqlCommand(query, DBcon, tn))
                    {
                        cmd.Parameters.AddWithValue("@specility_id", ddspecility.SelectedValue);
                        cmd.Parameters.AddWithValue("@problem_desc", txtmsg.Text.Trim());
                        cmd.Parameters.AddWithValue("@problem_type", ddpro.Text.Trim());
                        cmd.Parameters.AddWithValue("@doc_id", dddoctor.SelectedValue);
                        cmd.Parameters.AddWithValue("@patient_id", pid);

                        if (DateTime.TryParse(txtdate.Text, out dob))
                        {
                            cmd.Parameters.AddWithValue("@appo_date", dob);
                        }
                        else
                        {
                            throw new Exception("Invalid appointment date.");
                        }

                        if (TimeSpan.TryParse(txttime.Text, out tim))
                        {
                            cmd.Parameters.AddWithValue("@appo_time", tim);
                        }
                        else
                        {
                            throw new Exception("Invalid appointment time.");
                        }

                        // Execute insert query
                        cmd.ExecuteNonQuery();
                    }

                    // Select the appointment info and retrieve the appointment ID
                    query = "SELECT * FROM tbl_appointment_info WHERE specility_id = @specility_id AND patient_id = @patient_id " +
                            "AND doc_id = @doc_id AND problem_type = @problem_type AND appo_date = @appo_date AND appo_time = @appo_time";

                    using (SqlCommand cmd = new SqlCommand(query, DBcon, tn))
                    {
                        cmd.Parameters.AddWithValue("@specility_id", ddspecility.SelectedValue);
                        cmd.Parameters.AddWithValue("@patient_id", pid);
                        cmd.Parameters.AddWithValue("@doc_id", dddoctor.SelectedValue);
                        cmd.Parameters.AddWithValue("@problem_type", ddpro.Text.Trim());
                        cmd.Parameters.AddWithValue("@appo_date", dob); // Reuse parsed date
                        cmd.Parameters.AddWithValue("@appo_time", tim); // Reuse parsed time

                        // Execute the select query and fill the dataset
                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataSet ds = new DataSet();
                        adapter.Fill(ds);

                        if (ds.Tables[0].Rows.Count > 0)
                        {
                            // Get the appointment ID and store it in the appoi variable
                            appoi = Convert.ToInt32(ds.Tables[0].Rows[0]["appo_id"]);
                        }
                    }

                    // You can now use appoi here for further logic
                    // For example: Insert into another table using this appointment ID
                    if (appoi > 0)
                    {
                        query = "INSERT INTO tbl_appointment_status(appo_id, hos_id, status) VALUES(@appo_id, @hos_id, @status)";
                        using (SqlCommand cmd = new SqlCommand(query, DBcon, tn))
                        {
                            cmd.Parameters.AddWithValue("@appo_id", appoi);
                            cmd.Parameters.AddWithValue("@hos_id", ddhospital.SelectedValue);  // Assuming hos_id is the same as patient_id
                            cmd.Parameters.AddWithValue("@status", "Pending"); // Example status

                            // Execute the insert query for appointment status
                            cmd.ExecuteNonQuery();
                        }
                    }

                    // Clear form fields
                    txtmsg.Text = "";
                    ddpro.Text = "";
                    txtdate.Text = "";
                    ddspecility.SelectedValue = "0";

                    // Commit the transaction
                    tn.Commit();

                    #endregion
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Exception: " + ex.Message + "')</script>");
                    tn?.Rollback();  // Rollback transaction if an error occurs
                }
                finally
                {
                    DBcon.Close();  // Always close the connection in the finally block
                }
            }
        }


    }
}