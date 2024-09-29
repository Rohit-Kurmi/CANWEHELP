using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_mng.page
{
    public partial class checkdoctordetails : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds=new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                Bind_doc_details();
            }
        }

        protected void Bind_doc_details()
        {
            int hid = Convert.ToInt32(Session["user"]);
            

            try
            {
              
                cmd = new SqlCommand();
               
                cmd.CommandText = "select * from [dbo].[tbl_doctor_registration_info] where hos_id=@hos_id";
                cmd.Parameters.AddWithValue("@hos_id", hid);
                ds = new DataSet();
                ds = DB.get_data(cmd);
                Gfordocdetil.DataSource = ds;
                Gfordocdetil.DataBind();
            

            }

            catch (Exception ex) 
            {
            
            }

        }


    }
}