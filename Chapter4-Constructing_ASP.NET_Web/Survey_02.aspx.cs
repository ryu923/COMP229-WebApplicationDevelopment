using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter4_Practice
{
    public partial class Survey_02 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //void Click(object s, EventArgs e)
        //{
        //    feedbackLabel.Text = "Your name is: " + name.Value + "<br />";
        //    feedbackLabel.Text = "Your email is: " + email.Value + "<br />";
        //    feedbackLabel.Text = "You like to work with: <br />";
        //    for(int i = 0; i <= servermodel.Items.Count - 1; i++)
        //    {
        //        if(servermodel.Items[i].Selected)
        //        {
        //            feedbackLabel.Text += " - " + servermodel.Items[i].Text + "<br />";
        //        }
        //    }
        //    feedbackLabel.Text = "You like .NET: " + likeDotNet.Value;
        //}

        protected void confirmButton_Click(object sender, EventArgs e)
        {
            feedbackLabel.Text = "Your name is: " + name.Value + "<br />";
            feedbackLabel.Text += "Your email is: " + email.Value + "<br />";
            feedbackLabel.Text += "You like to work with: <br />";
            for (int i = 0; i <= servermodel.Items.Count - 1; i++)
            {
                if (servermodel.Items[i].Selected)
                {
                    feedbackLabel.Text += " - " + servermodel.Items[i].Text + "<br />";
                }
            }
            feedbackLabel.Text += "You like .NET: " + likeDotNet.Value;
        }
    }
}