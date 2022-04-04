<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebClient.User.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Dashboard</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .jumbotron{
            background-color:white;
            padding-top: 10px;
            padding-bottom: 0px;
        }
        .table{
            border:hidden;
            text-align:center !important;
        }
        th {
            text-align:center;
            background-color:#5cb85c;
            color: white;
            
        }
        a{
            color:red;
            padding: 5px;
        }
        .recentLabel{
            text-align:center;
            color:white;
            font-size:30px;
            background-color:#5cb85c;
        }

        .totalContacts{
            border: 2px solid black;
            background-color:#C6F7BE;
            text-align:center;
            margin-left:30%;
            margin-right: 30%;
            border-radius:20px;
        }

        .totalcontacts1{
            border: 2px solid black;
            width:500px;
            height:200px;
        }
        .background{
            background-image : url("../Introbg2.jpg");
            height:620px;
            background-size:cover;

       }
        
        /*.header1{
            margin-left: 35px;
        }
        .content{
            border: 2px solid #90e2ff;
            margin-right: 42%;
            background-color: #90e2ff;
            margin-left:42%;
            border-radius: 15px;
        }*/
    </style>

    <div class="background">
        <div class="totalContacts">
            <div class="totalContacts1">
                <h1>Total Contacts </h1>
                <asp:Label ID="Label1" Font-Size="50px" runat="server"></asp:Label>
            </div>
        </div>
        <br />
        <br />
    
        <div class="recentLabel">
            <asp:Label ID="Label2" class="tmp" runat="server">Your Recently Added Contacts</asp:Label>
        </div>
        <br />
        <br />
        <div style="padding-left:200px; padding-right:200px">
            <asp:GridView ID="GridView2" font-size="Larger" runat="server" AutoGenerateColumns="false" DataKeyNames="id" DataSourceID="SqlDataSource2" GridLines = "None" CssClass="table table-responsive">
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" Visible="false" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="Firstname" HeaderText="Firstname" SortExpression="Firstname" />
                    <asp:BoundField DataField="Lastname" HeaderText="Lastname" SortExpression="Lastname" />
                    <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" SortExpression="Mobileno" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ContactManagementConnectionString %>" SelectCommand="SELECT TOP (3) [id], [Firstname], [Lastname], [Mobileno] FROM [contacts] WHERE ([Username] = @Username) ORDER BY [id] DESC">
                <SelectParameters>
                    <asp:SessionParameter Name="Username" SessionField="username" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
                <br />
                <br />
        </div>
    </div>
</asp:Content>
