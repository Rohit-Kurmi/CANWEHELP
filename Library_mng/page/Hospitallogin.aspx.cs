using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_mng.page
{
    public partial class Hospitallogin : System.Web.UI.Page
    {


        DBconfig DB= new DBconfig();

        SqlCommand cmd = new SqlCommand();

        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbtnp_Click(object sender, EventArgs e)
        {

            try
            {
                cmd= new SqlCommand();
                cmd.CommandText= "Select * from  tbl_hospitallogin_info  where hospital_id=@hospital_id";
                    cmd.Parameters.AddWithValue("@hospital_id", hloginidtxt.Text.Trim());
                ds= new DataSet();
                ds = DB.get_data(cmd);


                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["hosp_password"].ToString() == passwordp.Text.Trim())
                    {



                        Response.Write("<script>alert('User Exist')</script>");

                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid User Name or Password')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('User Not Exist')</script>");

                }

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('Something  is wrong........!')</script>");
            }

        }
    }
}