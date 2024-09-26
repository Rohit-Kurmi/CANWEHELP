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
    public partial class patientlogin : System.Web.UI.Page


    {
        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();

        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbtnp_Click(object sender, EventArgs e)
        {
            try
            {
                cmd = new SqlCommand();
                cmd.CommandText = "Select * from [dbo].[tbl_patientlogin_info] where patlogin_id=@patlogin_id";

                cmd.Parameters.AddWithValue("@patlogin_id", loginid.Text.Trim());
                ds = new DataSet();

                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    if (ds.Tables[0].Rows[0]["pwd"].ToString() == passwordp.Text.Trim())
                    {


                        cmd = new SqlCommand();
                        cmd.CommandText = "select patinet_id from tbl_patient_registration_info where email=@email";
                        cmd.Parameters.AddWithValue("@email", loginid.Text.Trim());
                        ds=new DataSet();
                        ds=DB.get_data(cmd);

                        if (ds.Tables[0].Rows.Count>0)
                        {
                            Session["user"]=  ds.Tables[0].Rows[0]["patinet_id"].ToString();
                        }


                        Response.Redirect("hospitalhome.aspx");



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