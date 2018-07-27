using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter9
{
    public partial class UsingRepeater : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True");

            SqlCommand comm = new SqlCommand(
                "SELECT EmployeeID, Name, Username, Password " + 
                "FROM Employees", conn);

            SqlDataReader reader;

            try
            {
                conn.Open();
                reader = comm.ExecuteReader();

                myRepeater.DataSource = reader;
                myRepeater.DataBind();

                reader.Close();
            }
            catch
            {
                Response.Write("Error retrieving user data.");
            }
            finally
            {
                conn.Close();
            }
        }
    }
}