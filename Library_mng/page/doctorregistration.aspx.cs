using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Library_mng.page
{
    public partial class doctorregistration : System.Web.UI.Page
    {
        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_specility();
            }

        }

        protected void bind_specility()
        {
            try
            {
                cmd = new SqlCommand();

                cmd.CommandText = "select * from [dbo].[tbl_speciality_info]";

                ds = new DataSet();
                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddspecility.DataSource = ds;
                    ddspecility.DataTextField = "speciality_name";
                    ddspecility.DataValueField = "speciality_id";
                    ddspecility.DataBind();
                    ddspecility.Items.Insert(0, new ListItem("<---select bind_specility-->", "0"));
                }

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related specility binding in doctor registration: " + ex.Message + "')</script>");

            }
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;
            SqlTransaction tnn = null;

            conn.Open();


            try
            {
                TimeSpan time;
                string Gender = "";

                int hid = Convert.ToInt32(Session["user"]);


                if (rbtnMale.Checked == true)
                {
                    Gender = rbtnMale.Text.Trim();
                }

                else if (rbtnFemale.Checked == true)
                {
                    Gender = rbtnFemale.Text.Trim();
                }

                tnn = conn.BeginTransaction();

                cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.Transaction = tnn;

                cmd.CommandText = "insert into  [dbo].[tbl_doctor_registration_info] (spec_id,hos_id,upm_no,qualification,doc_fname,doc_lname,experience,from_time,to_time,doc_mobile_no,doc_email,doc_gender)" +
                              "values(@spec_id,@hos_id,@upm_no,@qualification,@doc_fname,@doc_lname,@experience,@from_time,@to_time,@doc_mobile_no,@doc_email,@doc_gender)";
                
                cmd.Parameters.AddWithValue("@hos_id", hid);
                cmd.Parameters.AddWithValue("@spec_id", ddspecility.SelectedValue);
                cmd.Parameters.AddWithValue("@upm_no", txtuprn.Text.Trim());
                cmd.Parameters.AddWithValue("@qualification", txtquali.Text.Trim());
                cmd.Parameters.AddWithValue("@doc_fname", txtfn.Text.Trim());
                cmd.Parameters.AddWithValue("@doc_lname", txtln.Text.Trim());
                cmd.Parameters.AddWithValue("@experience", txtexper.Text.Trim());

                if (TimeSpan.TryParse(txtfromtime.Text, out time))
                { 
                cmd.Parameters.AddWithValue("@from_time", time);
            }

                if (TimeSpan.TryParse(txttotime.Text, out time))
                {
                    cmd.Parameters.AddWithValue("@to_time", time);
                }

                cmd.Parameters.AddWithValue("@doc_mobile_no", txtmno.Text.Trim());
                cmd.Parameters.AddWithValue("@doc_email", txtgmail.Text.Trim());
                cmd.Parameters.AddWithValue("@doc_gender", Gender);

                cmd.ExecuteNonQuery();

                ddspecility.SelectedValue = "0";
                txtuprn.Text = "";
                txtquali.Text = "";
                txtfn.Text = "";
                txtln.Text = "";
                txtexper.Text = "";
                txtfromtime.Text = "";
                txttotime.Text = "";
                txtmno.Text = "";
                txtgmail.Text = "";
                rbtnMale.Checked= false;
                rbtnFemale.Checked= false;

                tnn.Commit();
                conn.Close();







            }

            catch(Exception ex)
            {
                Response.Write("<script>alert('exception related click on doctor registraiton: " + ex.Message + "')</script>");
                tnn.Rollback();
                conn.Close();
            }

        }
    }
}