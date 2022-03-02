<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="WebClient.Contacts.ContactList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>ContactList</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive active" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
            <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Label" HeaderText="Label" SortExpression="Label" />
            <asp:BoundField DataField="ContactType" HeaderText="ContactType" SortExpression="ContactType" />
            <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
            
        </Columns>
</asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ContactManagementConnectionString %>" SelectCommand="SELECT * FROM [contacts]" DeleteCommand="DELETE FROM [contacts] WHERE [id] = @id" InsertCommand="INSERT INTO [contacts] ([Firstname], [Lastname], [Email], [Label], [ContactType], [Mobileno]) VALUES (@Firstname, @Lastname, @Email, @Label, @ContactType, @Mobileno)" UpdateCommand="UPDATE [contacts] SET [Firstname] = @Firstname, [Lastname] = @Lastname, [Email] = @Email, [Label] = @Label, [ContactType] = @ContactType, [Mobileno] = @Mobileno WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Label" Type="String" />
            <asp:Parameter Name="ContactType" Type="String" />
            <asp:Parameter Name="Mobileno" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Firstname" Type="String" />
            <asp:Parameter Name="Lastname" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Label" Type="String" />
            <asp:Parameter Name="ContactType" Type="String" />
            <asp:Parameter Name="Mobileno" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Text="Add Contact" OnClick="Button1_Click" />

</asp:Content>
