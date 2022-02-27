using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebClient.SignupReference;

namespace WebClient.User
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonSignup_Click(object sender, EventArgs e)
        {
            SignupReference.SignupClient sc = new SignupReference.SignupClient();
            user u = new user();
            u.Email = email.Text;
            u.Username = uname.Text;
            u.Password = passwd.Text;
            u.Mobileno = int.Parse(mobileno.Text);
            if (passwd.Text == repasswd.Text)
            {
                bool res = sc.Signup(u);
                if (res)
                {
                    //Label1.Text = "SignUp Successful";
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    //Label1.Text = "User Already Exist";
                    Response.Write("<script>alert('User Already Exist')</script>");
                }
            }
        }
    }
}