﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter4_Practice
{
    public partial class SmartBox : System.Web.UI.UserControl
    {
        public string LabelText
        {
            set
            {
                myLabel.Text = value;
            }
        }

        public string Text
        {
            get
            {
                return myTextBox.Text;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}