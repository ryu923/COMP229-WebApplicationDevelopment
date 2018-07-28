﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
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
            if(!IsPostBack)
            {
                BindList();
            }
        }

        protected void BindList()
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
                // Change below code because [employeesRepeater] changed to [employeesList]
                //employeesRepeater.DataSource = reader;
                //employeesRepeater.DataBind();
                employeesList.DataSource = reader;
                employeesList.DataBind();

                reader.Close();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void employeesList_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if(e.CommandName == "MoreDetailsPlease")
            {
                Literal li;
                li = (Literal)e.Item.FindControl("extraDetailsLiteral");
                li.Text = "Employee ID: <strong>" + e.CommandArgument + "</strong><br />";
            }
            else if(e.CommandName == "EditItem")
            {
                employeesList.EditItemIndex = e.Item.ItemIndex;

                BindList();
            }
            else if(e.CommandName == "CancelEditing")
            {
                employeesList.EditItemIndex = -1;

                BindList();
            }
            else if (e.CommandName == "UpdateItem")
            {
                int employeeId = Convert.ToInt32(e.CommandArgument);
                TextBox nameTextBox = (TextBox)e.Item.FindControl("nameTextBox");

                string newName = nameTextBox.Text;
                TextBox usernameTextBox = (TextBox)e.Item.FindControl("usernameTextBox");

                string newUsername = usernameTextBox.Text;

                UpdateItem(employeeId, newName, newUsername);
                employeesList.EditItemIndex = -1;

                BindList();
            }
        }

        protected void UpdateItem(int employeeId, string newName, string newUsername)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True");
            SqlCommand comm = new SqlCommand("UpdateEmployee", conn);

            comm.CommandType = System.Data.CommandType.StoredProcedure;

            comm.Parameters.Add("@EmployeeID", SqlDbType.Int);
            comm.Parameters["@EmployeeID"].Value = employeeId;

            comm.Parameters.Add("@NewName", SqlDbType.NVarChar, 50);
            comm.Parameters["@NewName"].Value = newName;

            comm.Parameters.Add("@NewUsername", SqlDbType.NVarChar, 50);
            comm.Parameters["@NewUsername"].Value = newUsername;

            try
            {
                conn.Open();

                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}