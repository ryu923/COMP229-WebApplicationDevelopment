using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter14
{
    public partial class Directories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewDriveInfo(object sender, EventArgs e)
        {
            switch(dirDropDown.SelectedItem.Text)
            {
                case "Directories":
                    grid.DataSource = Directory.GetDirectories("C:\\");
                    break;
                case "Files":
                    grid.DataSource = Directory.GetDirectories("C:\\");
                    break;
                case "Directories/Files":
                    grid.DataSource = Directory.GetDirectories("C:\\");
                    break;
            }

            grid.DataBind();
        }
    }
}