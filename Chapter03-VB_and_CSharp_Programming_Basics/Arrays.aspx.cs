using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter3_Practice
{
    public partial class Arrays : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string[] drinkList = new string[4];
            drinkList[0] = "Water";
            drinkList[1] = "Juice";
            drinkList[2] = "Soda";
            drinkList[3] = "Milk";

            foreach(object o in drinkList)
            {
                drinkLabel.Text += o + "</br>";
            }
        }
    }
}