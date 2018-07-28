using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter3_Practice
{
    public partial class PageEvents : System.Web.UI.Page
    {
        void Page_Init(object s, EventArgs e)
        {
            messageLabel.Text = "1. Page_Init <br/>";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            messageLabel.Text = "2. Page_Load <br/>";
        }

        void Page_PreRender(object s, EventArgs e)
        {
            messageLabel.Text = "3. Page_Render <br/>";
        }

        void Page_UnLoad(object s, EventArgs e)
        {
            messageLabel.Text = "4. Page_UnLoad <br/>";
        }
    }
}