using System;
using System.Collections.Generic;
using System.Linq;
using System.Drawing;
using System.Drawing.Imaging;
using System.Net;
using System.Security.Cryptography;     
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYPROJECT
{
    public partial class test1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        int count = 0;
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (RB1.SelectedItem.Value == "1")
            {

                count += 1;

            }
            if (Rbtn2.SelectedItem.Value == "1")
            {

                count += 1;

            }
            if (Rbtn3.SelectedItem.Value == "3")
            {

                count += 1;

            }
            if (Rbtn4.SelectedItem.Value == "1")
            {

                count += 1;

            }
            if (Rbtn5.SelectedItem.Value == "3")
            {

                count += 1;

            }
            if (count < 3)
            {
                Response.Write("Try Next Time");
            }
            else
            {

                Response.Redirect("Test2.aspx?Total1=" + count);

            }
        }
    }
    }
