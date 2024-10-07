using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace Library_mng.page
{
    public partial class appoinment_details : System.Web.UI.Page
    {
        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_patient_details();
            }
        }

        protected void bind_patient_details()
        {
            try
            {
                int hid = Convert.ToInt32(Session["user"]);

                cmd = new SqlCommand();
                cmd.CommandText = ("SELECT dbo.tbl_patient_registration_info.fname,dbo.tbl_patient_registration_info.lname,dbo.tbl_patient_registration_info.dob," +
                    "dbo.tbl_patient_registration_info.gender,dbo.tbl_patient_registration_info.email,dbo.tbl_patient_registration_info.phone_no," +
                    "dbo.tbl_patient_registration_info.addres,dbo.tbl_patient_registration_info.blood_group,tbl_speciality_info.speciality_name," +
                    " dbo.tbl_appointment_info.problem_desc FROM dbo.tbl_appointment_info INNER JOIN dbo.tbl_doctor_registration_info ON " +
                    "dbo.tbl_appointment_info.doc_id = dbo.tbl_doctor_registration_info.doc_id INNER JOIN dbo.tbl_patient_registration_info ON" +
                    " dbo.tbl_appointment_info.patient_id = dbo.tbl_patient_registration_info.patinet_id inner join tbl_speciality_info on " +
                    "tbl_speciality_info.speciality_id = dbo.tbl_appointment_info.specility_id WHERE hos_id = @hos_id");
                cmd.Parameters.AddWithValue("@hos_id", hid);
                ds = new DataSet();
                ds = DB.get_data(cmd);
                patientdetails.DataSource = ds;
                patientdetails.DataBind();

            }



            catch (Exception ex)
            {
                Response.Write("<script>alert('Something  is wrong........!')</script>");
            }

        }
    }
}