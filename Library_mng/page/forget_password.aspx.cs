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
    public partial class forget_password : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection();
        DBconfig DB = new DBconfig();
        DataSet ds= new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void forgetbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string newPassword = newpassword.Text;
                string confirmPassword = ConfNewPassword.Text;


                if (newPassword == confirmPassword)
                {
                    cmd=new SqlCommand();
                    cmd.CommandText = "update  [dbo].[tbl_patientlogin_info] set pwd=@pwd where patlogin_id=@patlogin_id";
                    cmd.Parameters.AddWithValue("@pwd", newpassword.Text.Trim());
                    cmd.Parameters.AddWithValue("@patlogin_id", PatientId.Text.Trim());
                    DB.insert_update_delet(cmd);

                }

                else
                {
                    Response.Write("<script>alert('password is not match')</script>");
                }

            }

            catch(Exception ex)
            {
                Response.Write("<script>alert('Something  is wrong........!')</script>");
            }
        }
    }
}