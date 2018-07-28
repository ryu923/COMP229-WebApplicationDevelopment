using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter6
{
    public partial class Login_06 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                submitButton.Text = "Valid";
            }
            else
            {
                submitButton.Text = "Invalid!";
            }
        }
    }
}