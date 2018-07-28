using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter6
{
    public partial class CustomValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submitButton_Click(object sender, EventArgs e)
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

        public void CheckUniqueUserName(Object s, ServerValidateEventArgs e)
        {
            string username = e.Value.ToLower();
            if (username == "david" || username == "ryu")
            {
                e.IsValid = false;
            }
        }
    }
}