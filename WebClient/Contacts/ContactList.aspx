<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="WebClient.Contacts.ContactList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ContactList</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .table{
            border:hidden;
            text-align:center !important;
        }
        th {
            text-align:center;
            background-color:#71eddb;
            color: red
            
        }
        a{
            color:red;
            padding: 5px;
        }
        .btn{
            margin-left: 45%;
        }

        .jumbotron {
            background-color:white;
        }

    </style>

    <asp:Button ID="Button1" class=".button1" runat="server" CssClass="btn btn-success" Text="Add Contact" OnClick="Button1_Click" />
    &nbsp;&nbsp;
    Search:    
    <asp:TextBox ID="txtSearch" runat="server" CssClass="txt"></asp:TextBox>&nbsp;&nbsp;<asp:Button ID="btnSearch" runat="server" Text="Search" CssClass=" btn-success" />  
    
    <br />
    <br />

    <asp:GridView ID="GridView2" runat="server" GridLines = "None" CssClass="table table-responsive" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" DataKeyNames="id">
        <Columns>
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Label" HeaderText="Label" SortExpression="Label" />
            <asp:BoundField DataField="ContactType" HeaderText="ContactType" SortExpression="ContactType" />
            <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
            <asp:BoundField DataField="id" Visible="false" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Columns>
    </asp:GridView>
    <br />
    <br />

    <asp:GridView ID="GridView1" runat="server" GridLines = "None" HeaderStyle-CssClass="GridHeader" AutoGenerateColumns="False" CssClass="table table-responsive" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True" RowStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" Visible="false" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Firstname" ItemStyle-HorizontalAlign="Center" HeaderText="Firstname" SortExpression="Firstname" />
            
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Label" HeaderText="Label" SortExpression="Label" />
            <asp:BoundField DataField="ContactType" HeaderText="ContactType" SortExpression="ContactType" />
            <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            
        </Columns>
        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />

<RowStyle HorizontalAlign="Center"></RowStyle>
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContactManagementConnectionString %>" SelectCommand="SELECT [Mobileno], [ContactType], [Label], [Email], [Lastname], [Firstname], [id] FROM [contacts] WHERE ([Username] = @Username)" DeleteCommand="DELETE FROM [contacts] WHERE [id] = @id" InsertCommand="INSERT INTO [contacts] ([Mobileno], [ContactType], [Label], [Email], [Lastname], [Firstname]) VALUES (@Mobileno, @ContactType, @Label, @Email, @Lastname, @Firstname)" UpdateCommand="UPDATE [contacts] SET [Mobileno] = @Mobileno, [ContactType] = @ContactType, [Label] = @Label, [Email] = @Email, [Lastname] = @Lastname, [Firstname] = @Firstname WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="ContactType" Type="String" />
            <asp:Parameter Name="Label" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Firstname" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
        </SelectParameters>
        <UpdateParameters >
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="ContactType" Type="String" />
            <asp:Parameter Name="Label" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
        
    </asp:SqlDataSource>

    
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ContactManagementConnectionString %>" SelectCommand="SELECT [Firstname], [Lastname], [Email], [Label], [ContactType], [Mobileno], [id] FROM [contacts] WHERE (([Username] = @Username) AND ([Firstname] = @Firstname))" DeleteCommand="DELETE FROM [contacts] WHERE [id] = @id" InsertCommand="INSERT INTO [contacts] ([Firstname], [Lastname], [Email], [Label], [ContactType], [Mobileno]) VALUES (@Firstname, @Lastname, @Email, @Label, @ContactType, @Mobileno)" UpdateCommand="UPDATE [contacts] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [Email] = @Email, [Label] = @Label, [ContactType] = @ContactType, [Mobileno] = @Mobileno WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Label" Type="String" />
            <asp:Parameter Name="ContactType" Type="String" />
            <asp:Parameter Name="Mobileno" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
            <asp:ControlParameter ControlID="txtSearch" Name="Firstname" PropertyName="Text" Type="String" />  
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Label" Type="String" />
            <asp:Parameter Name="ContactType" Type="String" />
            <asp:Parameter Name="Mobileno" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
