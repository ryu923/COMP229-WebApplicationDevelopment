using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dorknozzle
{
    public partial class _05_Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Application["PageCounter"] != null && (int)Application["PageCounter"] >= 10)
            {
                Application.Remove("PageCounter");
            }

            if(Application["PageCounter"] == null)
            {
                Application["PageCounter"] = 1;
            }
            //Lock method guarantees that only one user can work with the application variable at any time. Next, we call the UnLock method to unlock the application variable for the next request.Our use of Lock and UnLock in this scenario
            //guarantees that the application variable is incremented by one for each visit that’s
            //made to the page.
            else
            {
                Application.Lock();
                Application["PageCounter"] = (int)Application["PageCounter"] + 1;
                Application.UnLock();
            }

            myLabel.Text = Convert.ToString(Application["PageCounter"]);
        }
    }
}