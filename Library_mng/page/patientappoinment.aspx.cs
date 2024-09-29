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

namespace Library_mng
{
    public partial class patientappoinment : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();


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

            string querry = "";

            SqlConnection DBcon = new SqlConnection();
            DBcon.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;


            SqlTransaction tn = null;
            DBcon.Open();

            try
            {
                TimeSpan tim;
                int pid;
                pid = Convert.ToInt32(Session["user"]);
                DateTime dob;
                #region registration

                tn = DBcon.BeginTransaction();

                querry = "insert into [dbo].[tbl_appointment_info](doc_id,patient_id,specility_id,problem_type,problem_desc,appo_date,appo_time) " +
                    "Values(@doc_id,@patient_id,@specility_id,@problem_type,@problem_desc,@appo_date,@appo_time)";

                cmd = new SqlCommand();
                cmd.Connection = DBcon;
                cmd.Transaction = tn;
                cmd.CommandText = querry;

                cmd.Parameters.AddWithValue("@specility_id", ddspecility.SelectedValue);
                cmd.Parameters.AddWithValue("@problem_desc", txtmsg.Text.Trim());
                cmd.Parameters.AddWithValue("@problem_type", ddpro.Text.Trim());
                cmd.Parameters.AddWithValue("@doc_id", dddoctor.SelectedValue);
                cmd.Parameters.AddWithValue("@patient_id",pid);

                if (DateTime.TryParse(txtdate.Text, out dob))
                {
                    cmd.Parameters.AddWithValue("@appo_date", dob);
                }
                if (TimeSpan.TryParse(txttime.Text, out tim))
                {
                    cmd.Parameters.AddWithValue("@appo_time", tim);
                }

                cmd.ExecuteNonQuery();

                txtmsg.Text = "";
                ddpro.Text = "";
                txtdate.Text = "";
                ddspecility.SelectedValue = "0";

                tn.Commit();
                #endregion
                DBcon.Close();
            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related click on " + ex.Message + "')</script>");
                tn.Rollback();
                DBcon.Close();
            }
        }


    }
}