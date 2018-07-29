using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dorknozzle
{
    public partial class AddressBook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True");
            SqlCommand comm = new SqlCommand(
                "SELECT EmployeeID, Name, City, State, Mobilephone " +
                "FROM Employees", conn);
            SqlDataReader reader;

            try
            {
                conn.Open();

                reader = comm.ExecuteReader();
                grid.DataSource = reader;
                grid.DataKeyNames = new string[] { "EmployeeID" };
                grid.DataBind();
                reader.Close();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void grid_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindDetails();
        }

        private void BindDetails()
        {
            int selectedRowIndex = grid.SelectedIndex;
            //GridViewRow row = grid.Rows[selectedRowIndex];
            int employeeId = (int)grid.DataKeys[selectedRowIndex].Value;

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True");
            SqlCommand comm = new SqlCommand(
                "SELECT EmployeeID, Name, Address, City, State, Zip, HomePhone, Extension " +
                "FROM Employees " +
                "WHERE EmployeeID=@EmployeeID", conn);
            SqlDataReader reader;

            comm.Parameters.Add("EmployeeID", SqlDbType.Int);
            comm.Parameters["EmployeeID"].Value = employeeId;

            //string name = row.Cells[0].Text;

            //detailsLabel.Text = "You selected " + name + ".";

            try
            {
                conn.Open();

                reader = comm.ExecuteReader();
                employeeDetails.DataSource = reader;
                employeeDetails.DataKeyNames = new string[] { "EmployeeID" };
                employeeDetails.DataBind();
                reader.Close();
            }
            finally
            {
                conn.Close();
            }
        }

        protected void employeeDetails_ModeChanging(object sender, DetailsViewModeEventArgs e)
        {
            // Change current mode to the selected one
            employeeDetails.ChangeMode(e.NewMode);
            // Rebind the grid
            BindDetails();
        }

        protected void employeeDetails_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
        {
            int employeeId = (int)employeeDetails.DataKey.Value;

            TextBox newAddressTextBox = (TextBox)employeeDetails.FindControl("editAddressTextBox");
            TextBox newCityTextBox = (TextBox)employeeDetails.FindControl("editCityTextBox");

            string newAddress = newAddressTextBox.Text;
            string newCity = newCityTextBox.Text;

            SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True");
            SqlCommand comm = new SqlCommand("UpdateEmployeeDetails", conn);

            comm.CommandType = CommandType.StoredProcedure;

            comm.Parameters.Add("EmployeeID", SqlDbType.Int);
            comm.Parameters["EmployeeID"].Value = employeeId;

            comm.Parameters.Add("NewAddress", SqlDbType.NVarChar, 50);
            comm.Parameters["NewAddress"].Value = newAddress;

            comm.Parameters.Add("NewCity", SqlDbType.NVarChar, 50);
            comm.Parameters["NewCity"].Value = newCity;

            try
            {
                conn.Open();

                comm.ExecuteNonQuery();
            }
            finally
            {
                conn.Close();
            }

            employeeDetails.ChangeMode(DetailsViewMode.ReadOnly);

            BindGrid();

            BindDetails();
        }
    }
}