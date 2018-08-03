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
    public partial class Departments : System.Web.UI.Page
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
            SqlConnection conn;
            DataSet dataSet = new DataSet();
            SqlDataAdapter adapter;

            if(ViewState["DepartmentsDataSet"] == null)
            {
                string connectionString = "Data Source=DESKTOP-ALD8LCS;Initial Catalog=Dorknozzle;Integrated Security=True";
                conn = new SqlConnection(connectionString);

                adapter = new SqlDataAdapter(
                    "SELECT DepartmentID, Department FROM Departments", conn);

                adapter.Fill(dataSet, "Departments");

                ViewState["DepartmentsDataSet"] = dataSet;
            }
            else
            {
                dataSet = (DataSet)ViewState["DepartmentsDataSet"];
            }

            string sortExpression;

            if(gridSortDirection == SortDirection.Ascending)
            {
                sortExpression = gridSortExpression + " ASC";
            }
            else
            {
                sortExpression = gridSortExpression + " DESC";
            }

            dataSet.Tables["Departments"].DefaultView.Sort = sortExpression;
            departmentsGrid.DataSource = dataSet.Tables["Departments"].DefaultView;
            departmentsGrid.DataBind();

            //departmentsGrid.DataSource = dataSet;
            //departmentsGrid.DataBind();
        }

        protected void departmentsGrid_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            int newPageIndex = e.NewPageIndex;
            departmentsGrid.PageIndex = newPageIndex;
            BindGrid();
        }

        protected void departmentsGrid_Sorting(object sender, GridViewSortEventArgs e)
        {
            string sortExpression = e.SortExpression;

            if(sortExpression == gridSortExpression)
            {
                if(gridSortDirection == SortDirection.Ascending)
                {
                    gridSortDirection = SortDirection.Descending;
                }
                else
                {
                    gridSortDirection = SortDirection.Ascending;
                }
            }
            else
            {
                gridSortDirection = SortDirection.Ascending;
            }

            gridSortExpression = sortExpression;
            BindGrid();
        }

        private string gridSortExpression
        {
            get
            {
                if(ViewState["GridSortExpression"] == null)
                {
                    ViewState["GridSortExpression"] = "DepartmentID";
                }

                return (string)ViewState["GridSortExpression"];
            }
            set
            {
                ViewState["GridSortExpression"] = value;
            }
        }

        private SortDirection gridSortDirection
        {
            get
            {
                if(ViewState["GridSortDirection"] == null)
                {
                    ViewState["GridSortDirection"] = SortDirection.Ascending;
                }

                return (SortDirection)ViewState["GridSortDirection"];
            }
            set
            {
                ViewState["GridSortDirection"] = value;
            }
        }
    }
}