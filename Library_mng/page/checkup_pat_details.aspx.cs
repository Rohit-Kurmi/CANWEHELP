using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_mng.page
{
    public partial class checkup_pat_details : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Bind_helthcheckup_details();
            }
        }


        protected void Bind_helthcheckup_details()
        {
            try
            {
                int hid = Convert.ToInt32(Session["user"]);
                cmd = new SqlCommand();
                cmd.CommandText = "select distinct tbl_patient_registration_info.fname, tbl_patient_registration_info.lname, tbl_patient_registration_info.email, tbl_patient_registration_info.phone_no,[dbo].[tbl_checkup_info].checkup_name,[dbo].[tbl_healthcheckup_info].problem_type,[dbo].[tbl_healthcheckup_info].problem_desc,[dbo].[tbl_healthcheckup_info].checkup_date from[dbo].[tbl_healthcheckup_info]inner join tbl_patient_registration_info on tbl_patient_registration_info.patinet_id = [dbo].[tbl_healthcheckup_info].patient_id inner join[dbo].[tbl_checkup_info] on[dbo].[tbl_checkup_info].checkup_id = [dbo].[tbl_healthcheckup_info].checkup_id where hospital = @hos";
                cmd.Parameters.AddWithValue("@hos", hid);

                ds = new DataSet();
                ds = DB.get_data(cmd);
                het_check_request.DataSource = ds;
                het_check_request.DataBind();



            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related  patient data binding: " + ex.Message + "')</script>");
            }
        }

    }
}