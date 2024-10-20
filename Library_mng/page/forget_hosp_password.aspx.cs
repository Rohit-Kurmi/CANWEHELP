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
    public partial class forget_hosp_password : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection();
        DBconfig DB = new DBconfig();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void resetbtn_Click(object sender, EventArgs e)
        {
            try
            {
                string newpassword = Newpasswordp.Text;
                string newconpassword = con_new_pass.Text;

                if(newpassword== newconpassword)
                {
                    cmd.CommandText = "update  tbl_hospitallogin_info set pwd=@pwd where hoslogin_id=@hoslogin_id";
                    cmd.Parameters.AddWithValue("@pwd", Newpasswordp.Text.Trim());
                    cmd.Parameters.AddWithValue("@hoslogin_id", hloginidtxt.Text.Trim());
                    DB.insert_update_delet(cmd);
                }
                else
                {
                    Response.Write("<script>alert('password is not match')</script>");
                }

            }

            catch (Exception ex) 
            {
                Response.Write("<script>alert('error in hospital password reseting')</script>");
            }
        }

    }
}