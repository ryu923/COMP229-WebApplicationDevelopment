using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter3_Practice
{
    public partial class Functions : System.Web.UI.Page
    {
        // Function is on here!
        string getName()
        {
            return "David Ryu";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            messageLabel.Text = getName();
        }
    }
}