using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Library_mng.page
{
    public partial class details_patient_homecare : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) 
            {
                Bind_home_care();
            }

        }

        protected void Bind_home_care()
        {

            try
            {
                int hid = Convert.ToInt32(Session["user"]);
            
            cmd = new SqlCommand();
            cmd.CommandText = "  select tbl_patient_registration_info.fname,tbl_patient_registration_info.lname,tbl_patient_registration_info.email," +
                "\r\ntbl_patient_registration_info.phone_no,\r\n[dbo].[tbl_speciality_info].speciality_name,tbl_homecare_info.problem_type," +
                "tbl_homecare_info.problem_description,tbl_homecare_info.from_data,\r\ntbl_homecare_info.from_time,tbl_homecare_info.to_tmie," +
                "tbl_homecare_info.how_many_days from tbl_homecare_info\r\n\r\ninner join tbl_patient_registration_info on" +
                " tbl_patient_registration_info.patinet_id = tbl_homecare_info.patient_id\r\ninner join[dbo].[tbl_speciality_info] on " +
                "[dbo].[tbl_speciality_info].speciality_id = tbl_homecare_info.specility_id\r\n\r\nwhere hospital_id = @hos_id";

                cmd.Parameters.AddWithValue("@hos_id", hid);
                ds = new DataSet();
                ds = DB.get_data(cmd);

                home_care_details.DataSource= ds;
                home_care_details.DataBind();

            }

            catch(Exception ex)
            {
                Response.Write("<script>alert('exception related  homecare data binding: " + ex.Message + "')</script>");
            }


        }
    }
}