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
    public partial class hospitalprofile : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DBconfig DB = new DBconfig();

        protected void Page_Load(object sender, EventArgs e)
        {
            cn.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;
            int hid = Convert.ToInt32(Session["user"]);

            try
            {
                cmd=new SqlCommand();

                cmd.CommandText = "select * from  tbl_hospital_registration_info where hospital_id=@hospital_id";
                cmd.Parameters.AddWithValue("@hospital_id", hid);

                cmd.Connection=cn; 
                ds=new DataSet();

                ds = DB.get_data(cmd);

                lblNAME.Text = Convert.ToString(ds.Tables[0].Rows[0]["hospital_name"]);
                lblREG.Text = Convert.ToString(ds.Tables[0].Rows[0]["registration_no"]);
                lblWEB.Text = Convert.ToString(ds.Tables[0].Rows[0]["website"]);
                lblGMAIL.Text = Convert.ToString(ds.Tables[0].Rows[0]["email"]);
                lblTELE.Text = Convert.ToString(ds.Tables[0].Rows[0]["telephone_no"]);
                lblMNO.Text = Convert.ToString(ds.Tables[0].Rows[0]["phone_no"]);
                lblADDRESS.Text = Convert.ToString(ds.Tables[0].Rows[0]["address"]);
                lblPINITAL.Text = Convert.ToString(ds.Tables[0].Rows[0]["pincode"]);
                lblWH.Text = Convert.ToString(ds.Tables[0].Rows[0]["working_hours"]);
                lblDOC.Text = Convert.ToString(ds.Tables[0].Rows[0]["doc_home_avail"]);
                lblNUR.Text = Convert.ToString(ds.Tables[0].Rows[0]["nurse_home_avail"]);
                lblDISP.Text = Convert.ToString(ds.Tables[0].Rows[0]["dispensary_avail"]);
                lblEMER.Text = Convert.ToString(ds.Tables[0].Rows[0]["emergency_ser_avail"]);


                int stateid = Convert.ToInt32(ds.Tables[0].Rows[0]["state_id"]);
                cmd = new SqlCommand();
                cmd.CommandText = "select state_name from table_state_info where state_id = @state_id";
                cmd.Parameters.AddWithValue("@state_id", stateid);
                DataSet ds_temp=new DataSet();
                ds_temp = DB.get_data(cmd);
                lblSTATE.Text = Convert.ToString(ds_temp.Tables[0].Rows[0]["state_name"]);


                int districtid= Convert.ToInt32(ds.Tables[0].Rows[0]["district_id"]);

                cmd = new SqlCommand();
                cmd.CommandText = "select district_name from tbl_district_info where district_id = @districtid";
                cmd.Parameters.AddWithValue("@districtid", districtid);
                ds_temp = new DataSet();
                ds_temp = DB.get_data(cmd);
                lblDIST.Text = Convert.ToString(ds_temp.Tables[0].Rows[0]["district_name"]);


                int cityid = Convert.ToInt32(ds.Tables[0].Rows[0]["city_id"]);
                cmd = new SqlCommand();
                cmd.CommandText = " select city_name from tbl_city_info where city_id = @cityid";
                cmd.Parameters.AddWithValue("@cityid", cityid);
                ds_temp = new DataSet();
                ds_temp = DB.get_data(cmd);
                lblCITY.Text = Convert.ToString(ds_temp.Tables[0].Rows[0]["city_name"]);

               



            }


            catch (Exception ex) 
            {
                Response.Write("<script>alert('error related to profile ' )</script>");
            }


        }




    }
}