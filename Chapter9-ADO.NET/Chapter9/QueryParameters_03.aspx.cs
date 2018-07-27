using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter9
{
    public partial class QueryParameters_03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True");
            SqlCommand comm = new SqlCommand(
                "SELECT EmployeeID, Name, Username, Password " + 
                "FROM Employees WHERE EmployeeID=@EmployeeID", conn);
            SqlDataReader reader;

            int employeeID;

            if(!int.TryParse(idTextBox.Text, out employeeID))
            {
                userLabel.Text = "Please, enter a numeric ID!";
            }
            else
            {
                comm.Parameters.Add("@EmployeeID", System.Data.SqlDbType.Int);
                comm.Parameters["@EmployeeID"].Value = employeeID;

                try
                {
                    conn.Open();

                    reader = comm.ExecuteReader();

                    if((reader.Read()))
                    {
                        userLabel.Text = "Employee ID: " + reader["EmployeeID"] + "<br />" +
                                         "Name: " + reader["Name"] + "<br />" +
                                         "Username: " + reader["Username"] + "<br />" +
                                         "Password: " + reader["Password"];
                    }
                    else
                    {
                        userLabel.Text = "There is no user with this ID: " + employeeID;
                    }

                    reader.Close();
                }

                catch
                {
                    userLabel.Text = "Error retrieving user data.";
                }
                finally
                {
                    conn.Close();
                }
            }
        }
    }
}