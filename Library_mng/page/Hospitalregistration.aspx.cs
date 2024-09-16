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
using System.Drawing;
using System.Web.Services.Description;

namespace Library_mng
{
    public partial class Hospitalregistration : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();



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
                    dddstate.DataSource = ds;
                    dddstate.DataTextField = "state_name";
                    dddstate.DataValueField = "state_id";
                    dddstate.DataBind();
                    dddstate.Items.Insert(0, new ListItem("----Select State----", "0"));

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('exception is state: " + ex.Message + "')</script>");
            }

        }

        public void bind_district()
        {

            try
            {

                cmd = new SqlCommand();
                cmd.CommandText = "select * from [dbo].[tbl_district_info] where state_id=@state_id ";

                cmd.Parameters.AddWithValue("@state_id", dddstate.SelectedValue);

                ds = new DataSet();
                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddddistrict.DataSource = ds;
                    ddddistrict.DataTextField = "district_name";
                    ddddistrict.DataValueField = "district_id";
                    ddddistrict.DataBind();
                    ddddistrict.Items.Insert(0, new ListItem("Select District", "0"));
                }

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('exception is district: " + ex.Message + "')</script>");
            }
        }
        
        public void bind_city()
        {

            try
            {

                cmd = new SqlCommand();

                cmd.CommandText = "select * from [dbo].[tbl_city_info] where district_id=@district_id";

                cmd.Parameters.AddWithValue("@district_id", ddddistrict.SelectedValue);

                ds = new DataSet();
                ds = DB.get_data(cmd);



                if (ds.Tables[0].Rows.Count > 0)
                {

                    dddcity.DataSource = ds;
                    dddcity.DataTextField = "city_name";
                    dddcity.DataValueField = "City_id";
                    dddcity.DataBind();
                    dddcity.Items.Insert(0, new ListItem("Select City", "0"));
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('exception is city: " + ex.Message + "')</script>");
            }
        }


        protected void dddstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            bind_district();
        }

        protected void ddddistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            bind_city();
        }


        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string query = "";

            string Doctor_At_Home_Availability = "";
            string Nurse_At_Home_Availability = "";
            string Is_there_Emergency_Service = "";
            string Is_there_Any_Dispensary = "";
            
            if (RBdocyes.Checked == true)
            {
                Doctor_At_Home_Availability = RBdocyes.Text.Trim();
            }
            else
            {
                Doctor_At_Home_Availability = RBdocno.Text.Trim();
            }


            if (RBnurseyes.Checked == true)
            {
                Nurse_At_Home_Availability = RBnurseyes.Text.Trim();
            }
            else
            {
                Nurse_At_Home_Availability = RBnurseno.Text.Trim();
            }


            if (RBeneryes.Checked == true)
            {
                Is_there_Emergency_Service = RBeneryes.Text.Trim();
            }
            else
            {
                Is_there_Emergency_Service = RBemerno.Text.Trim();
            }

            if (RBDisyes.Checked == true)
            {
                Is_there_Any_Dispensary = RBDisyes.Text.Trim();
            }
            else
            {
                Is_there_Any_Dispensary = RBDisno.Text.Trim();
            }






            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;

            SqlTransaction tnn = null;
            conn.Open();

            try
            {
                tnn = conn.BeginTransaction();
                
                query = "Insert into [dbo].[tbl_hospital_registration_info](state_id, district_id, city_id,hospital_name,registration_no,email,website,working_hours,phone_no,telephone_no,dispensary_avail,doc_home_avail,nurse_home_avail,emergency_ser_avail,address,pincode) " +
                    "values (@state_id,@district_id,@city_id,@hospital_name,@registration_no,@email,@website,@working_hours,@phone_no,@telephone_no,@dispensary_avail,@doc_home_avail,@nurse_home_avail,@emergency_ser_avail,@address,@pincode)";

                cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.Transaction = tnn;
                cmd.CommandText = query;

                cmd.Parameters.AddWithValue("@state_id", dddstate.SelectedValue);
                cmd.Parameters.AddWithValue("@district_id", ddddistrict.SelectedValue);
                cmd.Parameters.AddWithValue("@city_id", dddcity.SelectedValue);


                cmd.Parameters.AddWithValue("@hospital_name", Txtname.Text.Trim());
                cmd.Parameters.AddWithValue("@registration_no", txtregistrationno.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtgmail.Text.Trim());
                cmd.Parameters.AddWithValue("@website", txtweb.Text.Trim());
                cmd.Parameters.AddWithValue("@working_hours", txtworkinghours.Text.Trim());
                cmd.Parameters.AddWithValue("@phone_no", txtmobileno.Text.Trim());
                cmd.Parameters.AddWithValue("@telephone_no", txttelephone.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", txtpin.Text.Trim());

                cmd.Parameters.AddWithValue("@dispensary_avail", Is_there_Any_Dispensary);
                cmd.Parameters.AddWithValue("@doc_home_avail", Doctor_At_Home_Availability);
                cmd.Parameters.AddWithValue("@nurse_home_avail", Nurse_At_Home_Availability);
                cmd.Parameters.AddWithValue("@emergency_ser_avail", Is_there_Emergency_Service);
                cmd.ExecuteNonQuery(); 

                query= "insert into tbl_hospitallogin_info(hospital_id,hoslogin_id,pwd) values(@hospital_id,@hoslogin_id,@pwd)";
                cmd = new SqlCommand();
                cmd.Connection = conn;
                cmd.Transaction = tnn;
                cmd.CommandText = query;

                cmd.Parameters.AddWithValue("@hospital_id", Txtname.Text.Trim());
                cmd.Parameters.AddWithValue("@hoslogin_id", txtgmail.Text.Trim());
                cmd.Parameters.AddWithValue("@pwd", txtpwd.Text.Trim());
                cmd.ExecuteNonQuery();

                Txtname.Text= "";
                txtregistrationno.Text = "";
                txtgmail.Text = "";
                txtweb.Text = "";
                txtworkinghours.Text = "";
                txtmobileno.Text = "";
                txttelephone.Text = "";
                txtaddress.Text = "";
                txtpin.Text = "";
                txtpwd.Text = "";
                RBdocyes.Checked = false;
                RBnurseyes.Checked = false;
                RBeneryes.Checked = false;
                RBDisyes.Checked = false;

                tnn.Commit();
                conn.Close();
                Response.Write("<script>alert('Data inserted successfully')</script>");

            }

            catch (Exception ex)
            {
                tnn.Rollback();
                conn.Close();
                Response.Write("<script>alert('exception to be inserted: " + ex.Message + "')</script>");
            }


        }

        
    }
}