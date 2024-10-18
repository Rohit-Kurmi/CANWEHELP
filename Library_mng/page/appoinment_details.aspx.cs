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
                string status = "pending";

                cmd = new SqlCommand();
                cmd.CommandText = ("SELECT  dbo.tbl_appointment_info .appo_id, dbo.tbl_patient_registration_info.fname,dbo.tbl_patient_registration_info.lname," +
                    "dbo.tbl_patient_registration_info.dob,dbo.tbl_patient_registration_info.gender,dbo.tbl_patient_registration_info.email," +
                    "dbo.tbl_patient_registration_info.phone_no,dbo.tbl_patient_registration_info.addres,dbo.tbl_patient_registration_info.blood_group," +
                    "tbl_speciality_info.speciality_name,dbo.tbl_appointment_info.problem_desc FROM dbo.tbl_appointment_info " +
                    "INNER JOIN dbo.tbl_patient_registration_info ON dbo.tbl_appointment_info.patient_id = dbo.tbl_patient_registration_info." +
                    "patinet_id inner join tbl_speciality_info on tbl_speciality_info.speciality_id = dbo.tbl_appointment_info.specility_id " +
                    "Inner join dbo.tbl_appointment_status on tbl_appointment_status.appo_id = dbo.tbl_appointment_info.appo_id " +
                    " WHERE hos_id = @hos_id and status = @status");
                cmd.Parameters.AddWithValue("@hos_id", hid);
                cmd.Parameters.AddWithValue("@status", status);
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

        protected void approve_CheckedChanged(object sender, EventArgs e)
        {

            try
            {
                RadioButton rb=(RadioButton)sender;
                GridViewRow row = (GridViewRow)rb.NamingContainer;

                if (row != null && row.RowIndex >= 0 && row.RowIndex < patientdetails.Rows.Count)
                {
                    int appo_id = Convert.ToInt32(patientdetails.DataKeys[row.RowIndex].Value);
                    string newStatus = rb.Text == "APPROVE" ? "Approved" : "Declined";

                    // Update the database status based on the selected option
                    cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE tbl_appointment_status SET status=@status , given_date=CONVERT(date, GETDATE()) , givent_time= CONVERT(time, GETDATE()) WHERE appo_id=@appo_id";
                    cmd.Parameters.AddWithValue("@status", newStatus);
                    cmd.Parameters.AddWithValue("@appo_id", appo_id);


                    DB.insert_update_delet(cmd); // Execute the update query

                    // Refresh the GridView after the update
                    bind_patient_details();
                }

            }

            catch(Exception ex)
            {

            }
        }
    }
}