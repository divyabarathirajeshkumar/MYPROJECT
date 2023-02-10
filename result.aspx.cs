using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MYPROJECT
{
    public partial class result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Rslt.Text = Request.QueryString["Total"];
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Thank you for your feedback");
        }
    }
}