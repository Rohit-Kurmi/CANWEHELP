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
using System.Drawing;
using System.Collections;

namespace Library_mng.page
{
    public partial class patienthomecare : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_state();
                specility();
                bind_hospital();
            }
        }


        protected void specility()
        {
            try
            {
                cmd = new SqlCommand();
                cmd.CommandText = " select * from[dbo].[tbl_speciality_info]";
                

                ds= new DataSet();
                ds= DB.get_data(cmd);

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
                Response.Write("<script>alert('exception related specility: " + ex.Message + "')</script>");
            }
        }

        protected void bind_state()
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
                Response.Write("<script>alert('exception related state: " + ex.Message + "')</script>");

            }

        }



        protected void bind_hospital()
        {
            try {

                cmd= new SqlCommand();
                cmd.CommandText = "select * from tbl_hospital_registration_info ";

                ds = new DataSet();
                ds = DB.get_data(cmd);
                if(ds.Tables[0].Rows.Count > 0)
                {
                    ddhospital.DataSource = ds;

                    ddhospital.DataTextField = "hospital_name";
                    ddhospital.DataValueField = "hospital_id";
                    ddhospital.DataBind();
                    ddhospital.Items.Insert(0, new ListItem("select hospital", "0"));


                }


            }

            catch(Exception ex)  
            {
                Response.Write("<script>alert('exception related hospital select " + ex.Message + "')</script>");

            }
        }


        protected void bind_district()
        {
            try
            {
                cmd = new SqlCommand();
                cmd.CommandText = "select * from [dbo].[tbl_district_info] where state_id=@state_id";
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
                Response.Write("<script>alert('exception related district: " + ex.Message + "')</script>");
            }

        }


        protected void bind_city()
        {

            try
            {

                cmd = new SqlCommand();
                cmd.CommandText = " select * from  [dbo].[tbl_city_info] where district_id=@district_id";
                cmd.Parameters.AddWithValue("@district_id", dddistrict.SelectedValue);


                ds = new DataSet();
                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                { 
                    
                    ddcity.DataSource=ds;
                    ddcity.DataTextField = "city_name";
                    ddcity.DataValueField = "City_id";
                    ddcity.DataBind();
                    ddcity.Items.Insert(0, new ListItem("Select City", "0"));

                }



            }
            catch(Exception ex)
            
                {
                Response.Write("<script>alert('exception related city: " + ex.Message + "')</script>");

            }
        }

        protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
        {
            bind_district();
        }


        protected void dddistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            bind_city();
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            int homecarid=0;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;
            SqlTransaction tnn=null;
            con.Open();
            
            try
            {
               
                DateTime dob;
                TimeSpan time;
                int pid;
                pid = Convert.ToInt32( Session["user"]);

                tnn = con.BeginTransaction();
                cmd = new SqlCommand();
                cmd.Connection = con;
                cmd.Transaction = tnn;
                cmd.CommandText = "insert into tbl_homecare_info(patient_id,hospital_id,state_id,distict_id,city_id,specility_id,from_data,how_many_days,from_time,to_tmie,problem_type,problem_description,address,pincode,services)" +
                                                                 " values (@patient_id,@hospital_id,@state_id,@distict_id,@city_id,@specility_id,@from_data,@how_many_days,@from_time,@to_tmie,@problem_type,@problem_description,@address,@pincode,@services)";

                cmd.Parameters.AddWithValue("@hospital_id", ddhospital.SelectedValue);
                cmd.Parameters.AddWithValue("@state_id",ddstate.SelectedValue);
                cmd.Parameters.AddWithValue("@distict_id",dddistrict.SelectedValue);
                cmd.Parameters.AddWithValue("@city_id",ddcity.SelectedValue);
                cmd.Parameters.AddWithValue("@specility_id",ddspecility.SelectedValue);
                cmd.Parameters.AddWithValue("@patient_id", pid);
                
                if(TimeSpan.TryParse(txtfromtime.Text, out  time))
                {
                    cmd.Parameters.AddWithValue("@from_time", time);
                }

                if(TimeSpan.TryParse(txttotime.Text, out time))
                {
                    cmd.Parameters.AddWithValue("@to_tmie", time);
                }

                if (DateTime.TryParse(txtdate.Text, out dob))
                    { 
                cmd.Parameters.AddWithValue("@from_data",dob);
                }

                cmd.Parameters.AddWithValue("@how_many_days", txtday.Text.Trim());
                cmd.Parameters.AddWithValue("@problem_type", ddpro.Text.Trim());
                cmd.Parameters.AddWithValue("@problem_description", txtmsg.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", txtpin.Text.Trim());
                cmd.Parameters.AddWithValue("@services", ddservices.Text.Trim());

                cmd.ExecuteNonQuery();

                
                string query;
                query = "select * from tbl_homecare_info where patient_id=@patient_id and hospital_id=@hospital_id and from_data=@from_data and " +
                    "how_many_days=@how_many_days and problem_description=@problem_description and address=@address and pincode=@pincode and services=@services";
                
                using(SqlCommand cmd = new SqlCommand(query, con,tnn))
                { 
                cmd.Parameters.AddWithValue("@hospital_id", ddhospital.SelectedValue);
                cmd.Parameters.AddWithValue("@patient_id", pid);
                cmd.Parameters.AddWithValue("@from_data", dob);
                cmd.Parameters.AddWithValue("@how_many_days", txtday.Text.Trim());
                cmd.Parameters.AddWithValue("@problem_description", txtmsg.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", txtpin.Text.Trim());
                cmd.Parameters.AddWithValue("@services", ddservices.Text.Trim());

                    // Execute the select query and fill the dataset
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    if (ds.Tables[0].Rows.Count > 0)
                    {
                        // Get the appointment ID and store it in the appoi variable
                        homecarid = Convert.ToInt32(ds.Tables[0].Rows[0]["homecar_id"]);
                    }

                }

                if(homecarid > 0)
                {
                    query = "insert into tbl_homecare_status (homecare_id,hos_id,status) values(@homecare_id,@hos_id,@status)";

                    using(SqlCommand cmd = new SqlCommand(query, con, tnn))
                    {
                        cmd.Parameters.AddWithValue("@homecare_id", homecarid);
                        cmd.Parameters.AddWithValue("@hos_id", ddhospital.SelectedValue);
                        cmd.Parameters.AddWithValue("@status", "Pending");
                        cmd.ExecuteNonQuery();
                    }

                }



                ddservices.Text = "";
                txtpin.Text = "";
                txtaddress.Text = "";
                txtmsg.Text = "";
                ddpro.Text = "";
                txtday.Text = "";
                txtdate.Text = "";
                ddspecility.SelectedValue = "0";
                ddcity.SelectedValue="0";
                dddistrict.SelectedValue = "0";
                ddstate.SelectedValue = "0";
                ddhospital.SelectedValue="0";

                tnn.Commit();
                con.Close();

            }

            catch (Exception ex) 
            {
                Response.Write("<script>alert('exception related click on " + ex.Message + "')</script>");
                tnn.Rollback();
                con.Close();
            }



        }
    
    }
}