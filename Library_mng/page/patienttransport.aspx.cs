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

namespace Library_mng.page
{
    public partial class patienttransport : System.Web.UI.Page
    {

        DBconfig DB = new DBconfig();
        SqlCommand cmd = new SqlCommand();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_state();
                bind_specility();


            }

        }



        protected void bind_specility()
        {

            try
            {

                cmd = new SqlCommand();
                cmd.CommandText = "select * from  [dbo].[tbl_speciality_info] ";
                ds = new DataSet();

                ds = DB.get_data(cmd);

                if (ds.Tables[0].Rows.Count > 0)
                {
                    ddspecility.DataSource = ds;

                    ddspecility.DataTextField = "speciality_name";
                    ddspecility.DataValueField = "speciality_id";
                    ddspecility.DataBind();
                    ddspecility.Items.Insert(0, new ListItem("----Select speciality----", "0"));
                }

            }


            catch (Exception ex)
            {
                Response.Write("<script>alert('exception related speciality: " + ex.Message + "')</script>");

            }
        }
        
        

    protected void bind_state()
    {

        try
        {
            cmd = new SqlCommand();
            cmd.CommandText = "select * from [dbo].[table_state_info] ";
            ds = new DataSet();

            ds = DB.get_data(cmd);

            if (ds.Tables[0].Rows.Count > 0)
            {
                ddstate.DataSource = ds;

                ddstate.DataTextField = "state_name";
                ddstate.DataValueField = "state_id";
                ddstate.DataBind();
                ddstate.Items.Insert(0, new ListItem("----Select State----", "0"));
            }

        }


        catch (Exception ex)
        {
            Response.Write("<script>alert('exception related state: " + ex.Message + "')</script>");

        }

    }
    


    protected void bind_district()
    {
        try
        {
            cmd = new SqlCommand();
            cmd.CommandText = "select * from [dbo].[tbl_district_info] where state_id=@state_id";
            cmd.Parameters.AddWithValue("@state_id", ddstate.SelectedValue);

            ds = new DataSet();
            ds = DB.get_data(cmd);

            if (ds.Tables[0].Rows.Count > 0)
            {
                dddistrict.DataSource = ds;
                dddistrict.DataTextField = "district_name";
                dddistrict.DataValueField = "district_id";
                dddistrict.DataBind();
                dddistrict.Items.Insert(0, new ListItem("Select District", "0"));
            }


        }

        catch (Exception ex)
        {
            Response.Write("<script>alert('exception related district: " + ex.Message + "')</script>");
        }

    }

    protected void ddstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        bind_district();
    }

    protected void bind_city()
    {

        try
        {
            cmd = new SqlCommand();
            cmd.CommandText = "select * from [dbo].[tbl_city_info] where district_id=@district_id";
            cmd.Parameters.AddWithValue("@district_id", dddistrict.SelectedValue);
            ds = new DataSet();
            ds = DB.get_data(cmd);

            if (ds.Tables[0].Rows.Count > 0)
            {
                ddcity.DataSource = ds;
                ddcity.DataTextField = "city_name";
                ddcity.DataValueField = "City_id";
                ddcity.DataBind();
                ddcity.Items.Insert(0, new ListItem("Select City", "0"));


            }


        }

        catch (Exception ex)
        {
            Response.Write("<script>alert('exception related city: " + ex.Message + "')</script>");
        }

    }
    protected void dddistrict_SelectedIndexChanged(object sender, EventArgs e)
    {
        bind_city();
    }

    protected void BtnSubmit_Click(object sender, EventArgs e)
    {
        string querry = "";

        SqlConnection DBcon = new SqlConnection();
        DBcon.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;


        SqlTransaction tn = null;
        DBcon.Open();

        try
        {
            DateTime dob;
            #region registration

            tn = DBcon.BeginTransaction();


            querry = "insert into [dbo].[tbl_transport_info](state_id, district_id, city_id, speciality_idi, trans_date,problem_description, address,pincode,problem_type)values(@state_id, @district_id, @city_id, @speciality_idi, @trans_date ,@problem_description, @address,@pincode,@problem_type)";
            cmd = new SqlCommand();
            cmd.Connection = DBcon;
            cmd.Transaction = tn;
            cmd.CommandText = querry;

            cmd.Parameters.AddWithValue("@state_id", ddstate.SelectedValue);
            cmd.Parameters.AddWithValue("@district_id", dddistrict.SelectedValue);
            cmd.Parameters.AddWithValue("@city_id", ddcity.SelectedValue);

            if (DateTime.TryParse(txtdate.Text, out dob))
            {
                cmd.Parameters.AddWithValue("@trans_date", dob);
            }

            cmd.Parameters.AddWithValue("@problem_description", txtmsg.Text.Trim());
            cmd.Parameters.AddWithValue("@address", txtaddress.Text.Trim());
            cmd.Parameters.AddWithValue("@pincode", txtpin.Text.Trim());
            cmd.Parameters.AddWithValue("@speciality_idi", ddspecility.SelectedValue);
                cmd.Parameters.AddWithValue("@problem_type", ddpro.Text.Trim());

                cmd.ExecuteNonQuery();
            txtmsg.Text = "";
            txtpin.Text = "";
            txtdate.Text = "";
            ddpro.Text = "";
            txtaddress.Text = "";

            tn.Commit();
            #endregion
            DBcon.Close();


        }

        catch (Exception ex)
        {
            Response.Write("<script>alert('exception related click on " + ex.Message + "')</script>");
            tn.Rollback();
            DBcon.Close();
        }

    }


}
}