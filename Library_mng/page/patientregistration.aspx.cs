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
    }
}