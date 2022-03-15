using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient.Contacts
{
    public partial class ContactList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                string url = "/User/Login.aspx";
                string f = "You must be Login first.";
                string script = "window.onload = function(){ alert('";
                script += f;
                script += "');";
                script += "window.location = '";
                script += url;
                script += "'; }";
                ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Contacts/AddContact.aspx");
        }
    }
}