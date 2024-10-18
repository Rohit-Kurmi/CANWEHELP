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

                cmd.CommandText = "select  HI.homecar_id ,PR.fname, PR.lname, PR.phone_no, SI.speciality_name, HI.problem_type, HI.problem_description, HI.from_data, " +
                    "HI.from_time,HI.to_tmie, HI.how_many_days,HS.status FROM tbl_homecare_info as HI INNER JOIN tbl_patient_registration_info as PR ON PR.patinet_id =" +
                    " HI.patient_id  INNER JOIN [dbo].[tbl_speciality_info] as SI ON SI.speciality_id = HI.specility_id  LEFT JOIN tbl_homecare_status as HS ON HI.homecar_id =" +
                    " HS.homecare_id  WHERE hospital_id = 25 and status='pending'select  HI.homecar_id ,PR.fname, PR.lname,  PR.phone_no, SI.speciality_name, HI.problem_type," +
                    " HI.problem_description, HI.from_data, HI.from_time,  HI.to_tmie, HI.how_many_days,HS.status FROM tbl_homecare_info as HI INNER JOIN " +
                    "tbl_patient_registration_info as PR ON PR.patinet_id = HI.patient_id  INNER JOIN [dbo].[tbl_speciality_info] as SI ON SI.speciality_id =" +
                    " HI.specility_id  LEFT JOIN tbl_homecare_status as HS ON HI.homecar_id = HS.homecare_id  WHERE hospital_id = 25 and status='pending'";

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
                RadioButton rb = (RadioButton)sender;
                GridViewRow row = (GridViewRow)rb.NamingContainer;

                if (row != null && row.RowIndex >= 0 && row.RowIndex < home_care_details.Rows.Count)
                {
                    int homecare_id = Convert.ToInt32(home_care_details.DataKeys[row.RowIndex].Value);
                    string newStatus = rb.Text == "APPROVE" ? "Approved" : "Declined";

                    // Update the database status based on the selected option
                    cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE [dbo].[tbl_homecare_status] SET status=@status , apporval_date=GETDATE() WHERE homecare_id=@homecar_id";
                    cmd.Parameters.AddWithValue("@status", newStatus);
                    cmd.Parameters.AddWithValue("@homecar_id", homecare_id);


                    DB.insert_update_delet(cmd); // Execute the update query

                    // Refresh the GridView after the update
                    Bind_home_care();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error updating status: " + ex.Message + "')</script>");
            }



        }
    }
}