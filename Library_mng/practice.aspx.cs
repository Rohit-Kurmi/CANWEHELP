using System;
using System.Data;
using System.Data.Common;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using Library_mng.AppCode;

namespace Library_mng
{
    public partial class practice : System.Web.UI.Page
    {
        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        SqlConnection dbconnection = new SqlConnection();
        SqlDataAdapter adp = new SqlDataAdapter();




        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {

                cmd = new SqlCommand();

                cmd.CommandText = "select * from  tbl_patient_registration_info";


                ds = new DataSet();
                ds = DB.get_data(cmd);



                if (ds.Tables[0].Rows.Count > 0)
                {

                    GridView1.DataSource = ds;
                    GridView1.DataBind();


                }

            }

            catch (Exception ex)
            {

            }



        }

        
    }
}