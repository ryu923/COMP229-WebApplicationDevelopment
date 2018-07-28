using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter4_Practice
{
    public partial class MultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SwitchPage(object sender, EventArgs e)
        {
            myMultiView.ActiveViewIndex = (myMultiView.ActiveViewIndex + 1) % 3;
        }
    }
}