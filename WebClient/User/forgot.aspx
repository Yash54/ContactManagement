<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgot.aspx.cs" Inherits="WebClient.User.forgot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="email_l" runat="server" Text="Email: "></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="email" ErrorMessage="*" ForeColor="#FF6699" ToolTip="Please Enter Email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ControlToValidate="email" ErrorMessage="Please enter a valid email" ForeColor="Red" ToolTip="email must be of form xyz@abc.com" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="sendbutton" runat="server" OnClick="sendbutton_Click" Text="Send" />
        </div>
    </form>
</body>
</html>
