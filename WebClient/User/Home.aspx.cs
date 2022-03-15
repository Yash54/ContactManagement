using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Write("<script>alert('You must be Login first.')</script>");
                Response.Redirect("/User/Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/User/Dashboard.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("/User/Dashboard.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("/User/Dashboard.aspx");
        }
    }
}