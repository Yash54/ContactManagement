using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient.User
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ForgotReference.ForgotClient fc = new ForgotReference.ForgotClient();
            // string res= ;
            //Alert.show(email.Text);
            //Alert.show(fc.Forgot(email.Text));
        }

        protected void sendbutton_Click(object sender, EventArgs e)
        {
            ForgotReference.ForgotClient fc = new ForgotReference.ForgotClient();
            string f = fc.Forgot(email.Text);

            string url = "/User/Login.aspx";
            string script = "window.onload = function(){ alert('";
            script += f;
            script += "');";
            script += "window.location = '";
            script += url;
            script += "'; }";
            ClientScript.RegisterStartupScript(this.GetType(), "Redirect", script, true);



            //Response.Write("<script language='javascript'>alert('" + f + " ');<" + "/script>");
            //Response.Redirect("/User/Login.aspx");
        }
    }
}