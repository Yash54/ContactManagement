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
            Label1.Text = f;
            //Response.Write("<script>alert(f)</script>");
            //Alert.show(fc.Forgot(email.Text));
        }
    }
}