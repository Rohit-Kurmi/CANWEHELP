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

                cmd.CommandText = "SELECT tbl_patient_registration_info.fname, tbl_patient_registration_info.lname, tbl_patient_registration_info.email, " +
                                  "tbl_patient_registration_info.phone_no, [dbo].[tbl_speciality_info].speciality_name, tbl_homecare_info.problem_type, " +
                                  "tbl_homecare_info.problem_description, tbl_homecare_info.from_data, tbl_homecare_info.from_time, " +
                                  "tbl_homecare_info.to_tmie, tbl_homecare_info.how_many_days, tbl_homecare_info.homecar_id " +
                                  "FROM tbl_homecare_info " +
                                  "INNER JOIN tbl_patient_registration_info ON tbl_patient_registration_info.patinet_id = tbl_homecare_info.patient_id " +
                                  "INNER JOIN [dbo].[tbl_speciality_info] ON [dbo].[tbl_speciality_info].speciality_id = tbl_homecare_info.specility_id " +
                                  "LEFT JOIN tbl_homecare_status ON tbl_homecare_info.homecar_id = tbl_homecare_status.homecare_id " +
                                  "WHERE tbl_homecare_status.homecare_id IS NULL AND hospital_id = @hos_id"; // Exclude processed records

                cmd.Parameters.AddWithValue("@hos_id", hid);

                ds = new DataSet();
                ds = DB.get_data(cmd);

                home_care_details.DataSource = ds;
                home_care_details.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Exception related to homecare data binding: " + ex.Message + "')</script>");
            }
        }

        protected void approve_CheckedChanged(object sender, EventArgs e)
        {
            try
            {
                int hid = Convert.ToInt32(Session["user"]);

                // Get the current GridViewRow
                GridViewRow row = (GridViewRow)((RadioButton)sender).NamingContainer;

                // Find the RadioButtons in the current row
                RadioButton approve = (RadioButton)row.FindControl("approve");
                RadioButton decline = (RadioButton)row.FindControl("decline");

                // Find the TextBox (Date Picker) in the current row
               

                // Get the hidden homecare_id (appointment_id)
                string homecare_id = home_care_details.DataKeys[row.RowIndex].Value.ToString();

                // Variable to store selected status
                string status = "";

                // Check which RadioButton is selected
                if (approve != null && approve.Checked)
                {
                    status = "APPROVE";
                }
                else if (decline != null && decline.Checked)
                {
                    status = "DECLINE";
                }

                // Get the selected date
                DateTime approvalDate;

                // Insert the data into the database
                cmd = new SqlCommand();
                cmd.CommandText = "INSERT INTO tbl_homecare_status(homecare_id, hos_id, status, apporval_date) VALUES " +
                                  "(@homecare_id, @hos_id, @status)";  // Corrected here

                cmd.Parameters.AddWithValue("@homecare_id", homecare_id);
                cmd.Parameters.AddWithValue("@hos_id", hid);
                cmd.Parameters.AddWithValue("@status", status);

                // Make sure to add the approval date parameter only if it's valid
              

                // Execute the SQL command
                DB.insert_update_delet(cmd);

                approve.Checked = false;
                decline.Checked = false;

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related  insert data in homcare status: " + ex.Message + "')</script>");
            }
        }
    }
}