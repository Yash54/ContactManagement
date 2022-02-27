<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="reset.aspx.cs" Inherits="WebClient.User.reset" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="password_l" runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="password" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="password" ErrorMessage="*" ForeColor="#FF6699" ToolTip="Please Enter Password "></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="PasswordValidator" runat="server" ControlToValidate="password" ErrorMessage="Please enter valid password" ForeColor="Red" ToolTip="Password Must be of length 6 to 20 and Contain one UPPERCASE one lowercase one symbol and one digit" ValidationExpression="((?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[\W]).{6,20})"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="confirmpassword_l" runat="server" Text="Confirm Password: "></asp:Label>
            <asp:TextBox ID="confirmpassword" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="confirmpassword" ErrorMessage="*" ForeColor="#FF6699" ToolTip="Please Enter Confirm Password"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="ConfirmPasswordValidator" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Password and Confirm password must be same " ForeColor="Red"></asp:CompareValidator>
            
            <br />
            <br />
            <asp:Button ID="Resetbutton" runat="server" OnClick="Resetbutton_Click" Text="Reset" />
        </div>
    </form>
</body>
</html>
