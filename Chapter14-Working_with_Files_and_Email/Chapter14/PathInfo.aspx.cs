using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter14
{
    public partial class PathInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string strPath = MapPath("myText.txt");

            resultLabel.Text += "File Path: " + strPath + "<br />";
            resultLabel.Text += "File Name: " + Path.GetFileName(strPath) + "<br />";
            resultLabel.Text += "Directory: " + Path.GetDirectoryName(strPath) + "<br />";
            resultLabel.Text += "Extension: " + Path.GetExtension(strPath) + "<br />";
            resultLabel.Text += "Name w/out Extension: " + Path.GetFileNameWithoutExtension(strPath);
        }
    }
}