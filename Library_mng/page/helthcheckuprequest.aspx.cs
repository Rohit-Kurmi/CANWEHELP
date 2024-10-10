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
using System.Xml.Linq;

namespace Library_mng.page
{
    public partial class helthcheckuprequest : System.Web.UI.Page
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
                cmd.CommandText = "select HC.healthcheck_id,PR.fname,PR.lname,HR.hospital_name,CI.checkup_name,HC.problem_desc,HC.problem_type,PR.phone_no," +
                    "HS.status from [dbo].[tbl_healthchek_status] as HS\r\ninner join [dbo].[tbl_healthcheckup_info] as HC on HC.healthcheck_id=HS.healthcheckup_id" +
                    "\r\ninner join tbl_patient_registration_info as PR on PR.patinet_id=HC.patient_id\r\ninner join [dbo].[tbl_hospital_registration_info]" +
                    " as HR on HR.hospital_id=HC.hospital\r\ninner join [dbo].[tbl_checkup_info] as CI on CI.checkup_id=HC.checkup_id\r\n" +
                    "where status='pending' and hos_id=@hos_id";
                cmd.Parameters.AddWithValue("@hos_id", hid);

                ds =new DataSet();
                ds = DB.get_data(cmd);
                het_check_request.DataSource = ds;
                het_check_request.DataBind();
                


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related helthcheckup request binding: " + ex.Message + "')</script>");
            }
        }

        protected void approve_CheckedChanged(object sender, EventArgs e)
        {


            try
            {
                RadioButton rb = (RadioButton)sender;
                GridViewRow row = (GridViewRow)rb.NamingContainer;

                if (row != null && row.RowIndex >= 0 && row.RowIndex < het_check_request.Rows.Count)
                {
                    int healthcheckId = Convert.ToInt32(het_check_request.DataKeys[row.RowIndex].Value);
                    string newStatus = rb.Text == "Approve" ? "Approved" : "Declined";

                    // Update the database status based on the selected option
                    cmd = new SqlCommand();
                    cmd.CommandText = "UPDATE [dbo].[tbl_healthchek_status] SET status=@status , apporaval_date=GETDATE() WHERE healthcheckup_id=@healthcheckId";
                    cmd.Parameters.AddWithValue("@status", newStatus);
                    cmd.Parameters.AddWithValue("@healthcheckId", healthcheckId);
                   

                    DB.insert_update_delet(cmd); // Execute the update query

                    // Refresh the GridView after the update
                    Bind_helthcheckup_details();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error updating status: " + ex.Message + "')</script>");
            }
        }
    }
    }
