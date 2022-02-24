using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient.User
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LoginReference.LoginClient lc = new LoginReference.LoginClient();
            string res = lc.Login(Label1.Text, Label2.Text);
            if (res == "Login Success")
            {
                Label3.Text = "Login Successful.";
                //Response.Redirect("../home.aspx");
            }

            else if(res == "Invalid Password")
            {
                Label3.Text = "Invalid Password";
            }

            else if (res == "User not exist please signup")
            {
                Label3.Text = "User not exist please signup";
            }

        }
    }
}