using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter3_Practice
{
    public partial class Loops : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int counter = 0;

            while(counter <= 10)
            {
                messageLabel.Text += counter.ToString() + " ";

                counter++;
            }
        }
    }
}