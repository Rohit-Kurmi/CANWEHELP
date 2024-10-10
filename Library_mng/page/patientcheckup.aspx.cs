using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_mng.page
{
    public partial class patientcheckup : System.Web.UI.Page
    {


        DBconfig DB=new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_checkup();
                bind_hospital();
            }

        }

        protected void bind_checkup()
        {
            try { 
            cmd = new SqlCommand();
            cmd.CommandText = "select * from [dbo].[tbl_checkup_info]";
            ds=new DataSet();
            ds = DB.get_data(cmd);

            if(ds.Tables[0].Rows.Count > 0 )
            {
                ddcheckup.DataSource = ds;
                ddcheckup.DataTextField = "checkup_name";
                ddcheckup.DataValueField = "checkup_id";
                ddcheckup.DataBind();
                ddcheckup.Items.Insert(0, new ListItem("<-----select checkup---->", "0"));
            }

            }

            catch(Exception ex)
            {
                Response.Write("<script>alert('exception related checkup dropdown: " + ex.Message + "')</script>");
            }

        }

        protected void bind_hospital()
        {
            try { 
            cmd=new SqlCommand();
            cmd.CommandText = "select * from [dbo].[tbl_hospital_registration_info]";

            ds=new DataSet();
            ds = DB.get_data(cmd);

            if (ds.Tables[0].Rows.Count>0)
            {

                    ddhospital.DataSource = ds;
                    ddhospital.DataTextField = "hospital_name";
                    ddhospital.DataValueField = "hospital_id";
                    ddhospital.DataBind();
                    ddhospital.Items.Insert(0, new ListItem("<----select Hospital---->", "0"));
            }
            }

            catch(Exception ex)
            {
                Response.Write("<script>alert('exception related hospital dropdown: " + ex.Message + "')</script>");
            }

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            int hechid = 0;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;
            SqlTransaction tnn = null;
            conn.Open();

            try
            {
                string query = "";
                DateTime dob;
                TimeSpan time;
                int pid;
                pid = Convert.ToInt32(Session["user"]);
                tnn = conn.BeginTransaction();

                cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.Transaction = tnn;
                cmd.CommandText = "insert into [dbo].[tbl_healthcheckup_info](checkup_id,patient_id,checkup_date,time,problem_type,problem_desc,hospital) " +
                                                              "values (@checkup_id,@patient_id,@checkup_date,@time,@problem_type,@problem_desc,@hospital)";



                cmd.Parameters.AddWithValue("@patient_id", pid);

                if (DateTime.TryParse(txtdate.Text, out dob))
                {
                    cmd.Parameters.AddWithValue("@checkup_date", dob);
                }

                if (TimeSpan.TryParse(txttime.Text, out time))
                { 
                cmd.Parameters.AddWithValue("@time", time);

                }

                cmd.Parameters.AddWithValue("@problem_type", ddpro.Text.Trim());
                cmd.Parameters.AddWithValue("@problem_desc", txtmsg.Text.Trim());
                cmd.Parameters.AddWithValue("@checkup_id", ddcheckup.SelectedValue);
                cmd.Parameters.AddWithValue("@hospital", ddhospital.SelectedValue);

                cmd.ExecuteNonQuery();

                query = "select * from tbl_healthcheckup_info where patient_id=@patient_id and checkup_date=checkup_date and time=@time and problem_type=@problem_type" +
                    " and problem_desc=@problem_desc and hospital=@hospital";
                using(SqlCommand cmd =new SqlCommand(query,conn,tnn))
                {
                    cmd.Parameters.AddWithValue("@patient_id", pid);
                    cmd.Parameters.AddWithValue("@checkup_date", dob);
                    cmd.Parameters.AddWithValue("@time", time);
                    cmd.Parameters.AddWithValue("@problem_type", ddpro.Text.Trim());
                    cmd.Parameters.AddWithValue("@problem_desc", txtmsg.Text.Trim());
                    cmd.Parameters.AddWithValue("@hospital", ddhospital.SelectedValue);


                    // Execute the select query and fill the dataset
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        // Get the appointment ID and store it in the appoi variable
                        hechid = Convert.ToInt32(ds.Tables[0].Rows[0]["healthcheck_id"]);
                    }

                    if (hechid > 0)
                    {
                        query = "insert into tbl_healthchek_status (healthcheckup_id,hos_id,status) values (@healthcheckup_id,@hos_id,@status)";
                        using (SqlCommand cm = new SqlCommand(query, conn, tnn))
                        { 
                            cm.Parameters.AddWithValue("@healthcheckup_id", hechid);
                        cm.Parameters.AddWithValue("@hos_id", ddhospital.SelectedValue);
                        cm.Parameters.AddWithValue("@status", "Pending");
                        cm.ExecuteNonQuery();
                        }
                    }

                }

                ddpro.Text = "";
                txtmsg.Text = "";
                txttime.Text = "";
                txtdate.Text = "";
                ddcheckup.SelectedValue = "0";
                ddhospital.SelectedValue="0";

                tnn.Commit();
                conn.Close();



            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related click on health checkup: " + ex.Message + "')</script>");
                tnn.Rollback();
                conn.Close();
            }


        }
    }
}