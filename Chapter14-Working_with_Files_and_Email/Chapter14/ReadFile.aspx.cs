using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter14
{
    public partial class ReadFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ReadText(object sender, EventArgs e)
        {
            string inputString;

            resultLabel.Text = "";

            using (StreamReader streamReader = File.OpenText(MapPath("myText.txt")))
            {
                inputString = streamReader.ReadLine();

                while(inputString != null)
                {
                    resultLabel.Text += inputString + "<br />";
                    inputString = streamReader.ReadLine();
                }
            }
        }
    }
}