using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;

using System.Data.SqlClient;

using System.Configuration;

namespace Library_mng.AppCode
{
    public class DBconfig
    {

        SqlConnection dbconnection=new SqlConnection();
        SqlConnection practice = new SqlConnection();

        // SqlCommand cmd = new SqlCommand();

        SqlDataAdapter adapter = new SqlDataAdapter();

        DataSet ds = new DataSet();

        public DBconfig()
        {
             //dbconnection.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;

            dbconnection.ConnectionString = ConfigurationManager.ConnectionStrings["dbstring"].ConnectionString;
           //dbconnection.ConnectionString = ConfigurationManager.ConnectionStrings["practice"].ConnectionString;
        }


        public void insert_update_delet(SqlCommand cmd)
        {
            dbconnection.Open();
            cmd.Connection = dbconnection;
            cmd.ExecuteNonQuery();
            dbconnection.Close();
        }

        public DataSet get_data(SqlCommand cmd)
        {
            ds = new DataSet();
            dbconnection.Open();
            cmd.Connection = dbconnection;
            adapter=new SqlDataAdapter();
            adapter.SelectCommand = cmd;
            adapter.Fill(ds);
            dbconnection.Close();
            return ds;
        }

    }
}