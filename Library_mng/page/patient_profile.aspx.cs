using Library_mng.AppCode;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Reflection;
using System.Security.Cryptography;

namespace Library_mng.page
{
    public partial class patient_profile : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter adp = new SqlDataAdapter();
        DataSet ds = new DataSet();
        DBconfig DB = new DBconfig();


        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack) // Ensure this runs only on the first load
            {
                try
                {
                    int pid = Convert.ToInt32(Session["user"]);
                    cmd = new SqlCommand();
                    cmd.CommandText = "SELECT P.fname, P.lname, P.dob, P.email, P.gender, P.phone_no, S.state_name, D.district_name, C.city_name, P.addres, P.blood_group, P.pincode " +
                  "FROM tbl_patient_registration_info AS P " +
                  "INNER JOIN table_state_info AS S ON S.state_id = P.state_id " +
                  "INNER JOIN tbl_district_info AS D ON D.district_id = P.district_id " +
                  "INNER JOIN tbl_city_info AS C ON C.city_id = P.city_id " +
                  "WHERE P.patinet_id = @patinet_id";
                    cmd.Parameters.AddWithValue("@patinet_id", pid); // Use the variable pid instead of hardcoded value


                    ds = DB.get_data(cmd);

                    if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                    {
                        lblFNAME.Text = Convert.ToString(ds.Tables[0].Rows[0]["fname"]);
                        lblLNAME.Text = Convert.ToString(ds.Tables[0].Rows[0]["lname"]);
                        lblDOB.Text = Convert.ToString(ds.Tables[0].Rows[0]["dob"]);
                        lblGMAIL.Text = Convert.ToString(ds.Tables[0].Rows[0]["email"]);
                        lblGENDER.Text = Convert.ToString(ds.Tables[0].Rows[0]["gender"]);
                        lblMNO.Text = Convert.ToString(ds.Tables[0].Rows[0]["phone_no"]);
                        lblSTATE.Text = Convert.ToString(ds.Tables[0].Rows[0]["state_name"]);
                        lblDIST.Text = Convert.ToString(ds.Tables[0].Rows[0]["district_name"]);
                        lblCITY.Text = Convert.ToString(ds.Tables[0].Rows[0]["city_name"]);
                        lblADDRESS.Text = Convert.ToString(ds.Tables[0].Rows[0]["addres"]);
                        lblBG.Text = Convert.ToString(ds.Tables[0].Rows[0]["blood_group"]);
                        lblPINITAL.Text = Convert.ToString(ds.Tables[0].Rows[0]["pincode"]);
                    }
                    else
                    {
                        Response.Write("<script>alert('No data found.')</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('An error occurred: " + ex.Message + "')</script>");
                }

                bind_appoinment_detal();
                bind_homecare_det();
                bind_healthcheckupe_det();
            }

        }


        protected void bind_appoinment_detal()
        {
            try
            {


                int pid = Convert.ToInt32(Session["user"]);
                cmd = new SqlCommand();
                cmd.CommandText = "SELECT HR.hospital_name, AI.problem_desc, AP.given_date, AP.givent_time, AP.status " +
                   "FROM [dbo].[tbl_appointment_status] AS AP " +
                   "INNER JOIN [tbl_appointment_info] AS AI ON AI.appo_id = AP.appo_id " +
                   "INNER JOIN [tbl_hospital_registration_info] AS HR ON HR.hospital_id = AP.hos_id " +
                   "WHERE patient_id = @patient_id";

                cmd.Parameters.AddWithValue("@patient_id", pid);

                ds = new DataSet();
                ds = DB.get_data(cmd);

                showAppoindment.DataSource = ds;
                showAppoindment.DataBind();
            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related checkup dropdown: " + ex.Message + "')</script>");
            }

        }


        protected void bind_homecare_det()
        {
            int pid = Convert.ToInt32(Session["user"]);
            cmd = new SqlCommand();
            cmd.CommandText = "select P.fname,p.lname,HR.hospital_name,HI.problem_description,HI.how_many_days,HC.apporval_date,HC.status from" +
                " [tbl_homecare_status] as HC\r\n inner join tbl_homecare_info as HI on HI.homecar_id=HC.homecare_id\r\n inner join " +
                "[tbl_hospital_registration_info] as HR on HR.hospital_id=HC.hos_id\r\n inner join tbl_patient_registration_info as P " +
                "on P.patinet_id=HI.patient_id\r\nwhere patient_id=@patient_id;";
            cmd.Parameters.AddWithValue("@patient_id", pid);

            ds = new DataSet();
            ds= DB.get_data(cmd);

            showhomecare.DataSource = ds;
            showhomecare.DataBind();
        }


        protected void bind_healthcheckupe_det()
        {
            int pid = Convert.ToInt32(Session["user"]);
            cmd = new SqlCommand();
            cmd.CommandText = "select P.fname, p.lname, HR.hospital_name, HI.problem_desc, HI.checkup_date, HI.time, HS.apporaval_date, HS.status from " +
                "[tbl_healthchek_status] as HS inner join [tbl_healthcheckup_info] as HI on HI.healthcheck_id = HS.healthcheckup_id inner join " +
                "[tbl_hospital_registration_info] as HR on HR.hospital_id = HS.hos_id inner join tbl_patient_registration_info as P on P.patinet_id" +
                " = HI.patient_id where patient_id = @patient_id;";
            cmd.Parameters.AddWithValue("@patient_id", pid);

            ds = new DataSet();
            ds = DB.get_data(cmd);

            showcheckup.DataSource = ds;
            showcheckup.DataBind();
        }



    }
}