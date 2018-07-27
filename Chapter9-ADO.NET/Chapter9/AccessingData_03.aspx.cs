using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter9
{
    public partial class AccessingData_03 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(
                "Server=localhost\\DESKTOP-ALD8LCS;Database=Dorknozzle;" + "Integrated Security=True");
            SqlCommand comm = new SqlCommand(
                "SELECT EmployeeID, Name FROM Employees", conn);
        }
    }
}