using ContactManagement;
using ContactManagement.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                string uname = Session["username"].ToString();
                Uname.Text = uname;
            }
            

        }
    }
}