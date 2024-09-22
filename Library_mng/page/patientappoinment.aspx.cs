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

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {

            string querry = "";

            SqlConnection DBcon = new SqlConnection();
            DBcon.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;


            SqlTransaction tn = null;
            DBcon.Open();
            try
            {
                DateTime dob;
                #region registration

                tn = DBcon.BeginTransaction();

                querry = "insert into [dbo].[tbl_appointment_info](specility_id,problem_type,problem_desc,appo_date) Values(@specility_id,@problem_type,@problem_desc,@appo_date)";

                cmd = new SqlCommand();
                cmd.Connection = DBcon;
                cmd.Transaction = tn;
                cmd.CommandText = querry;

                cmd.Parameters.AddWithValue("@specility_id", ddspecility.SelectedValue);
                cmd.Parameters.AddWithValue("@problem_desc", txtmsg.Text.Trim());
                cmd.Parameters.AddWithValue("@problem_type", ddpro.Text.Trim());

                if (DateTime.TryParse(txtdate.Text, out dob))
                {
                    cmd.Parameters.AddWithValue("@appo_date", dob);
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