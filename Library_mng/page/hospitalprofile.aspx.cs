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
                cmd = new SqlCommand();

                cmd.CommandText = "select * from  tbl_hospital_registration_info where hospital_id=@hospital_id";
                cmd.Parameters.AddWithValue("@hospital_id", hid);

                cmd.Connection = cn;
                ds = new DataSet();

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
                DataSet ds_temp = new DataSet();
                ds_temp = DB.get_data(cmd);
                lblSTATE.Text = Convert.ToString(ds_temp.Tables[0].Rows[0]["state_name"]);


                int districtid = Convert.ToInt32(ds.Tables[0].Rows[0]["district_id"]);

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


                cmd = new SqlCommand();
                cmd.CommandText = "SELECT distinct  speciality_name FROM dbo.tbl_hos_speciality_info INNER JOIN dbo.tbl_speciality_info ON dbo.tbl_hos_speciality_info.speciality_id = dbo.tbl_speciality_info.speciality_id where hos_id=@hosid";
                cmd.Parameters.AddWithValue("hosid", hid);

                ds = new DataSet();
                ds = DB.get_data(cmd);
                hosspeclist.DataSource = ds;
                hosspeclist.DataBind();


                cmd = new SqlCommand();
                cmd.CommandText = "SELECT distinct checkup_name  FROM  dbo.tbl_checkup_info INNER JOIN   dbo.tbl_hos_check_info ON dbo.tbl_checkup_info.checkup_id = dbo.tbl_hos_check_info.checkup_id where hospital_id=@hosid";
                cmd.Parameters.AddWithValue("@hosid", hid);

                ds = new DataSet();
                ds = DB.get_data(cmd);
                hoscheckuplist.DataSource = ds;
                hoscheckuplist.DataBind();




            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('error related to profile ' )</script>");
            }


        }

        protected void btncheckup_Click(object sender, EventArgs e)
        {
           
            try
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "addcheckup()", true);

                cmd = new SqlCommand();
                cmd.CommandText = "select * from tbl_checkup_info";

                ds= new DataSet();  
                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddcheckup.DataSource= ds;
                    ddcheckup.DataTextField = "checkup_name";
                    ddcheckup.DataValueField = "checkup_id";
                    ddcheckup.DataBind();
                    ddcheckup.Items.Insert(0, new ListItem("<----select checkup---->","0"));
                }

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('error related to profile add checkup list' )</script>");
            }

        }

        protected void btnspeciality_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "addspeciality()", true);

            //try
            //{
               
            //    cmd = new SqlCommand();
            //    cmd.CommandText = "select * from tbl_speciality_info";

            //    ds = new DataSet();
            //    ds = DB.get_data(cmd);

            //    if (ds.Tables[0].Rows.Count > 0)
            //    {
            //        ddspecility.DataSource = ds;
            //        ddspecility.DataTextField = "speciality_name";
            //        ddspecility.DataValueField = "speciality_id";
            //        ddspecility.DataBind();
            //        ddspecility.Items.Insert(0, new ListItem("<----select specility---->", "0"));
            //    }

            //}

            //catch (Exception ex)
            //{
            //    Response.Write("<script>alert('error related to profile add specility list' )</script>");
            //}



        }

        protected void addspecility_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;
                conn.Open();

                cmd = new SqlCommand();
                cmd.Connection = conn;
                int hid = Convert.ToInt32(Session["user"]);
                cmd.CommandText = "insert into tbl_hos_speciality_info(hos_id,speciality_id) values (@hos_id,@speciality_id)";
                cmd.Parameters.AddWithValue("@hos_id", hid);
                cmd.Parameters.AddWithValue("@speciality_id", ddspecility.SelectedValue);
                cmd.ExecuteNonQuery();
                ddspecility.SelectedValue = "0";
                conn.Close();

            }

            catch (Exception ex)
            {

                Response.Write("<script>alert('error related to profile insert specility list' )</script>");

            }

        }

        protected void addcheckup_Click(object sender, EventArgs e)
        {

            try
            {

                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;
                conn.Open();

                cmd = new SqlCommand();
                cmd.Connection = conn;
                int hid = Convert.ToInt32(Session["user"]);
                cmd.CommandText = "insert into tbl_hos_check_info(hospital_id,checkup_id) values (@hos_id,@checkup_id)";
                cmd.Parameters.AddWithValue("@hos_id", hid);
                cmd.Parameters.AddWithValue("@checkup_id", ddcheckup.SelectedValue);
                cmd.ExecuteNonQuery();

                ddcheckup.SelectedValue = "0";
                conn.Close();

            }

            catch (Exception ex)
            {

                Response.Write("<script>alert('error related to profile insert specility list' )</script>");

            }

        }
    }
}