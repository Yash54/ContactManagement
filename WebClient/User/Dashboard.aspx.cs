using OpenXmlPowerTools;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient.User
{
    public partial class Dashboard : System.Web.UI.Page
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

            Label1.Text = Session["contact"].ToString();

            //display1();
        }

        //private void display1()
        //{
        //    SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=ContactManagement;Integrated Security=True");
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("SELECT COUNT([Mobileno]) FROM[contacts] WHERE([Username] = @Username)", con);
        //    cmd.Parameters.AddWithValue("@CreatedBy", Label2.Text.Trim());
        //    Label2.Text = Convert.ToString(cmd.ExecuteScalar());
        //    con.Close();

        //}
    }
}