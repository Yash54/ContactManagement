using ContactManagement.User;
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
        protected void Gridview_rowdeleting(object sender, GridViewDeleteEventArgs e)
        {
            int pid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            ContactReference.ContactClient pd = new ContactReference.ContactClient();
            pd.Removecontact(pid);
            Response.Write("<script>alert('Deleted successfully')</script>");
        }

        //protected void GridView_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //}

        //protected void GridView_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    ContactReference.ContactClient cc = new ContactReference.ContactClient();
        //    contact c = new contact();
        //    GridViewRow row = GridView1.SelectedRow;
        //    int cid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        //    c.id = cid;
        //    TextBox name = GridView1.Rows[e.RowIndex].FindControl("Firstname") as TextBox;
        //    c.Firstname = name.Text;
        //    //c.Lastname = row.Cells[2].Text;
        //    //c.Email = row.Cells[3].Text;
        //    //c.Label = row.Cells[4].Text;
        //    //c.ContactType = row.Cells[5].Text;
        //    //c.Mobileno = row.Cells[6].Text;
        //    //cc.Updatecontact(c);
        //    Label1.Text = name.Text;
        //    //Response.Write("<script>alert('Updated successfully')</script>");
        //}

    }
}