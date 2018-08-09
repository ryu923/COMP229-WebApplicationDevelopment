using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapter14
{
    public partial class WriteFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void WriteText(object sender, EventArgs e)
        {
            // Chapter14-02: Directory path should be checked!
            //using (StreamWriter streamWriter = File.CreateText(@"C:\Users\Ryu\Desktop\Chapter14-Working_with_Files_and_Email\Chapter14\myText.txt"))
            //{
            //    streamWriter.WriteLine(myText.Text);
            //}

            // Chapter14-03
            using (StreamWriter streamWriter = File.AppendText(MapPath("myText.txt")))
            {
                streamWriter.WriteLine(myText.Text);
            }
        }
    }
}