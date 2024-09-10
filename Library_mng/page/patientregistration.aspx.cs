using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_mng
{
    public partial class patientregistration : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();

        DataSet ds = new DataSet();




        protected void bind2()
        {

            try
            {

                cmd = new SqlCommand();
                cmd.CommandText = "select * from tbl_district_info";

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
                bind2();
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


    }
}