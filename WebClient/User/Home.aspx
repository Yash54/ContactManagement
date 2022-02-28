<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebClient.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Home</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .background{
            background-image : url("../Introbg2.jpg");
            height:905px;
            background-size:cover;

        }
        .header{
            text-align:center;
            padding-top:10px;
            padding-bottom : 30px;
            font-size:20px;
            color : #5cb85c;
        }
        .tile{
            height:160px;
        }
        .Introduction{
            width:500px;
            border:1px solid #ffffff;
            background-color:#daefe6;
            margin-left: 35%;
            padding:20px;
            color:#000000;
            border-radius : 20px;
            height:350px;
        }
        .h3text{
            margin-left : 10%;
            padding-bottom:50px;

        }
        h3{
            text-align:center;
            width:400px;
            border-bottom : 3px dotted #5cb85c;
           
        }
        .DashBoardButton{
            text-align:center;  
        }
        .intro{
            width:400px;
            text-align:center;
            padding-left:50px;
            font-size: 18px;
        }       
         .ourservices{
             background-color: #5cb85c;
             width:100%;
             height : 80px;
             margin-top : 40px;
         }
         .servicetiles{
            
         }
         .serviceintro{
             text-align : center;
             border:none;
             padding-top : 6px;
             color:#ffffff;

         }
         .infobox{
            display : inline-block;
            width:23%;
            border:1px solid #ffffff;
            background-color:#daefe6;
            margin :30px 0 0 20px;
            padding:20px;
            color:#000000;
            border-radius : 20px;
            height:250px;
         }
         .infoheading{
             border-bottom : 2px dashed #5cb85c;
             text-align:center;
         }
         .servicetext{
             padding-top : 30px;
             text-align:center;
         }

    </style>
    <%--<h1>Welcome to FreshCall</h1>--%>
        <div class="background">
            <div class ="tile">
                <div class="header">
                    <h1>Welcome to FreshCall </h1>
                </div>
            </div>
            <div class="Introduction">
                <div class="h3text">
                    <h3>One Stop Solution for all your Contacts.</h3>
                </div>
                <div class="intro">
                    FreshCall is a Contact Management Solution which lets you to manage contact under one roof.It is a simple yet useful tool to get rid of remembaring contacts.
                </div>
                <br />
                <div class="DashBoardButton">
                <%--<asp:Button ID="Button1" CssClass="btn btn-success btn-lg" runat="server" OnClick="Button1_Click" Text="Go to DashBoard" />--%>
                    <asp:Button ID="DashBoardBtn" CssClass="btn btn-success btn-lg" runat="server" Text="Go to DashBoard" OnClick="Button2_Click1" />
                </div>


            </div>
            <div class="ourservices">
                <div class="serviceintro">
                    <h2>Our Services</h2>
                </div>
                <div class="servicetiles">
                    <div class="infobox">
                        <div class="infoheading">
                            <h4>View Contacts</h4>
                            
                        </div>
                        <div class="servicetext">
                            <h4>One Place to access all your contact list be it your friend,family or bussiness.</h4>
                        </div>
                        
                    </div>
                    <div class="infobox">
                        <div class="infoheading">
                            <h4>Add Contacts</h4>
                        </div>
                        <div class="servicetext">
                            <h4>FreshCall allows you to add contact list be it your friend,family or bussiness.</h4>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="infoheading">
                            <h4>Edit Contacts</h4>
                        </div>
                        <div class="servicetext">
                            <h4>In case of any error in contact details,changes can be made in your contact list.</h4>
                        </div>
                    </div>
                    <div class="infobox">
                        <div class="infoheading">
                            <h4>Delete Contacts</h4>
                        </div>
                        <div class="servicetext">
                            <h4>FreshCall allows you to delete one or many contacts,if there are no further needed.</h4>
                        </div>
                    </div>
                </div>
            </div>
      </div>
</asp:Content>
