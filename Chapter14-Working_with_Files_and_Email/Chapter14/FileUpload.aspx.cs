using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter14
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UploadFile(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                string fileName = fileUpload.FileName;

                fileUpload.SaveAs(MapPath(fileName));

                label.Text = "File " + fileName + "uploaded.";
            }
            else
                label.Text = "No file uploaded!";
        }
    }
}