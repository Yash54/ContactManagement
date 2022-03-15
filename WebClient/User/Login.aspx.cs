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
            if (Session["username"] != null)
            {
                Response.Redirect("/User/Home.aspx");
            }
        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            LoginReference.LoginClient lc = new LoginReference.LoginClient();
            string res = lc.Login(TextBox1.Text, TextBox2.Text);
            if (res == "Login Success")
            {
                Session["username"] = TextBox1.Text;
                Response.Redirect("/User/Home.aspx");
                //Response.Write("<script>alert('Login Successful')</script>");
            }

            else if (res == "Invalid Password")
            {
                Response.Write("<script>alert('Invalid Password')</script>");
            }

            else if (res == "User not exist please signup")
            {
                Response.Write("<script>alert('User not exist please signup')</script>");
            }
        }
    }
}