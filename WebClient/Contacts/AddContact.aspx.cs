using ContactManagement.User;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebClient.Contacts
{
    public partial class AddContact : System.Web.UI.Page
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
            
        }

        protected void AddContact1_Click(object sender, EventArgs e)
        {
            ContactReference.ContactClient sc = new ContactReference.ContactClient();
            contact c = new contact();
            c.Firstname = TextBox1.Text;
            c.Lastname = TextBox2.Text;
            c.Email = TextBox3.Text;
            c.Mobileno = TextBox5.Text;
            c.Label = DropDownList2.SelectedItem.Text;
            c.ContactType = DropDownList1.SelectedItem.Text;
            if(Session["username"] != null)
                c.Username = Session["username"].ToString();
            bool res = sc.Contact(c);
            if (res)
            {
                //Label1.Text = "SignUp Successful";
                Response.Redirect("ContactList.aspx");
            }
            else
            {
                //Label1.Text = "User Already Exist";
                Response.Write("<script>alert('Contact Already Exist.')</script>");
            }
        }
    }
}