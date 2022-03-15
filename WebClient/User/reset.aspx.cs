using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient.User
{
    public partial class reset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Resetbutton_Click(object sender, EventArgs e)
        {
            string quid = Request.QueryString["Uid"];
            ResetReference.ResetClient rc = new ResetReference.ResetClient();
            if (passwd.Text == conpasswd.Text)
            {
                bool res = rc.Reset(quid, passwd.Text);
                if (res)
                {
                    Response.Write("<script language='javascript'>alert('Password Reset Successfully. Now Go to Previous Window.');<" + "/script>");
                    //Response.Redirect("login.aspx");
                }
                //Alert.show("Request Not found Please Try Again");
            }
            //Alert.show("Password And Confirm Must Match");
        }
    }
}