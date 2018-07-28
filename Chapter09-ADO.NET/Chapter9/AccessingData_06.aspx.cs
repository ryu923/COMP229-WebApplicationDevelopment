using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter9
{
    public partial class AccessingData_06 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(
               "Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True");

            SqlCommand comm = new SqlCommand(
                "SELECT EmployeeID, Name FROM Employees", conn);

            conn.Open();

            SqlDataReader reader = comm.ExecuteReader();

            while(reader.Read())
            {
                employeesLabel.Text += reader["Name"] + "<br />";
            }

            reader.Close();
            conn.Close();
        }
    }
}