using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Library_mng.page;
using System.Data.Common;
using System.Collections;
using System.Configuration;
using System.Data.Odbc;
namespace Library_mng
{
    public partial class patientregistration : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        


        
        protected void bindcity()
        {
            try
            {
           
            cmd = new SqlCommand();

            cmd.CommandText = "select * from [dbo].[tbl_city_info] where district_id=@district_id";

            cmd.Parameters.AddWithValue("@district_id",dddistrict.SelectedValue);

            ds = new DataSet();
            ds = DB.get_data(cmd);



                if (ds.Tables[0].Rows.Count>0)
                        {

                    ddcity.DataSource = ds;
                    ddcity.DataTextField = "city_name";
                    ddcity.DataValueField = "City_id";
                    ddcity.DataBind();
                    ddcity.Items.Insert(0, new ListItem("Select City", "0"));


                }

        }

        catch(Exception ex)
        {
        
        }

        }

        protected void binddistrict()
        {

            try
            {

                cmd = new SqlCommand();
                cmd.CommandText = "select * from [dbo].[tbl_district_info] where state_id=@state_id ";

                cmd.Parameters.AddWithValue("@state_id", ddstate.SelectedValue);

                ds = new DataSet();
                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    dddistrict.DataSource = ds;
                    dddistrict.DataTextField = "district_name";
                    dddistrict.DataValueField = "district_id";
                    dddistrict.DataBind();
                    dddistrict.Items.Insert(0, new ListItem("Select District", "0"));
                }

            }

            catch (Exception ex)
            {

            }
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_state();
               
            }
        }

        public void bind_state()
        {
            try
            {
                cmd = new SqlCommand();
                cmd.CommandText = "select * from [dbo].[table_state_info] ";
                ds = new DataSet();

                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddstate.DataSource = ds;

                    ddstate.DataTextField = "state_name";
                    ddstate.DataValueField = "state_id";
                    ddstate.DataBind();
                    ddstate.Items.Insert(0, new ListItem("----Select State----", "0"));
                }

            }

            catch (Exception ex)
            {


            }


        }

        protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            binddistrict();
        }

        protected void dddistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            bindcity();
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
                string Gender = "";

                if (DateTime.TryParse(txtdob.Text, out dob))
                {
                    if (rbtnMale.Checked == true)
                    {
                        Gender = rbtnMale.Text.Trim();
                    }
                    else
                    {
                        Gender = rbtnFemale.Text.Trim();
                    }
                    Response.Write("<script>alert('Gender to be inserted: " + Gender + "')</script>");


                    tn = DBcon.BeginTransaction();


                    querry = "insert into tbl_patient_registration_info(state_id, district_id, city_id, fname, lname, gender,dob, email, phone_no, addres, pincode, blood_group)values(@state_id, @district_id, @city_id, @fname, @lname, @gender,@dob, @email, @phone_no, @addres, @pincode, @blood_group)";
                    cmd = new SqlCommand();
                    cmd.Connection = DBcon;
                    cmd.Transaction = tn;
                    cmd.CommandText = querry;

                    cmd.Parameters.AddWithValue("@fname", Txtfn.Text.Trim());
                    cmd.Parameters.AddWithValue("@lname", lastname.Text.Trim());
                    cmd.Parameters.AddWithValue("@addres", txtaddress.Text.Trim());
                    cmd.Parameters.AddWithValue("@phone_no", txtmobileno.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", txtgmail.Text.Trim());
                    cmd.Parameters.AddWithValue("@pincode", txtpin.Text.Trim());
                    cmd.Parameters.AddWithValue("@gender", Gender);
                    cmd.Parameters.AddWithValue("@dob", dob);
                    cmd.Parameters.AddWithValue("@blood_group", DDbg.Text.ToString());
                    cmd.Parameters.AddWithValue("@district_id", dddistrict.SelectedValue);
                    cmd.Parameters.AddWithValue("@city_id", ddcity.SelectedValue);
                    cmd.Parameters.AddWithValue("@state_id", ddstate.SelectedValue);
                    cmd.ExecuteNonQuery();

                    querry = "insert into [dbo].[tbl_patientlogin_info] (user_password,user_id) values (@pass,@user_id)";

                    cmd = new SqlCommand();
                    cmd.Connection = DBcon;
                    cmd.Transaction = tn;
                    cmd.CommandText = querry;

                    cmd.Parameters.AddWithValue("@pass", txtpwd.Text.Trim());
                    cmd.Parameters.AddWithValue("@user_id", txtcpwd.Text.Trim());
                    cmd.ExecuteNonQuery();

                    txtpwd.Text = "";
                    txtcpwd.Text = "";
                    Txtfn.Text = "";
                    lastname.Text = "";
                    txtmobileno.Text = "";
                    txtgmail.Text = "";
                    rbtnFemale.Checked = false;
                    rbtnMale.Checked = false;
                    txtpin.Text = "";
                    txtdob.Text = "";
                    txtaddress.Text = "";
                    DDbg.Text = "";

                    Response.Write("<script>alert('Data inserted successfully')</script>");


                    tn.Commit();
                    #endregion
                    DBcon.Close();


                }
            }

            catch (Exception ex)
            {
                tn.Rollback();
                DBcon.Close();
                Response.Write("<script>alert('Gender to be inserted: " + ex.Message + "')</script>");
                
            }
        }
        }
}