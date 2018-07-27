﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace Dorknozzle
{
    public partial class EmployeeDirectory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand comm;
            SqlDataReader reader;

            string connectionString = "Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True";

            conn = new SqlConnection(connectionString);

            comm = new SqlCommand(
                "SELECT EmployeeID, Name, Username " +
                "FROM Employees", conn);

            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                employeesRepeater.DataSource = reader;
                employeesRepeater.DataBind();

                reader.Close();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}