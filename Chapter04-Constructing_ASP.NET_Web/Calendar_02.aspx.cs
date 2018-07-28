using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter4_Practice
{
    public partial class Calendar_02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //void SelectionChanged()
        //{
        //    myLabel.Text = "";

        //    foreach(DateTime d in myCalendar.SelectedDates)
        //    {
        //        myLabel.Text += d.ToString("D") + "<br />";
        //    }
        //}

        protected void SelectionChanged(object sender, EventArgs e)
        {
            myLabel.Text = "";

            foreach (DateTime d in myCalendar.SelectedDates)
            {
                myLabel.Text += d.ToString("D") + "<br />";
            }
        }
    }
}