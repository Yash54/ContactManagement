<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddContact.aspx.cs" Inherits="WebClient.Contacts.AddContact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Add Contact</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div>
        <div class="container-fluid text-center">
            <div class="row content">
                <div class="col-md-4"></div>
                <div class="col-sm-4 text-center">
                    <br />
                    <div class="panel panel-success">
                        <div class="panel-heading" style="padding: 1px">
                            <h3>Add Contact</h3>
                        </div>
                        <div class="panel-body">
                            <div>
                                <div class="form-group text-left">
                                    <label>Firstname:</label>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" placeholder="Enter Your First Name" required="required"></asp:TextBox>
                                    
                                </div>
                                <div class="form-group text-left">
                                    <label>Lastname:</label>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" placeholder="Enter Your Last Name" required="required"></asp:TextBox>
                                   
                                </div>
                                <div class="form-group text-left">
                                    <label>Mobile No.:</label>
                                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" CssClass="form-control" placeholder="Enter Your Mobile Number" required="required"></asp:TextBox>
                                </div>
                                <div class="form-group text-left">
                                    <label>Email:</label>
                                    <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" placeholder="Enter Your Email" required="required"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Proper email id is required" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group text-left">
                                    <label>Label:</label>
                                    <%--<asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" placeholder="Mobile/Telephone" required="required"></asp:TextBox>--%>

                                    <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                                        <asp:ListItem>Mobile</asp:ListItem>
                                        <asp:ListItem>Telephone</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <br />
                                <div class="form-group text-left">
                                    <label>Contact Type:</label>
                                    <%--<asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" placeholder="Enter Contact Type" required="required"></asp:TextBox>--%>
                                    <div class="dropdown1">
                                        <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server">
                                            <asp:ListItem>Work</asp:ListItem>
                                            <asp:ListItem>Personal</asp:ListItem>
                                            <asp:ListItem Value="Home">Home</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    <br />
                                </div>
                            </div>
                            <div class="form-group">
                                &nbsp;
                                <asp:Button ID="AddContact1" CssClass="btn btn-success btn-lg" runat="server" Text="Add Contact" OnClick="AddContact1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4"></div>
            </div>
        </div>
    </div>
</asp:Content>
