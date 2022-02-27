<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Intro.aspx.cs" Inherits="WebClient.Intro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FreshCall</title>
    <style>
        .background{
            background-image : url("Introbg2.jpg");
            height:680px;
            background-size:cover;

        }
        .header{
            text-align:center;
            padding-top:30px;
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
            margin-left: 28%;
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
        .intro{
            width:400px;
            text-align:center;
            padding-left:50px;
        }
        #Button1{
            color:white;
            margin-left:20px;
            text-decoration:none;
            width:200px;
            height:60px;
            border-radius:20px;
            background-color:#5cb85c;
            font-size:18px;
            
            
        }
         #Button2{
            color:white;
            text-decoration:none;
            width:200px;
            height:60px;
            border-radius:20px;
            background-color:#5cb85c;
            font-size:18px;
        }
         #Button1:hover{
             background-color:#ffffff;
             color:#5cb85c;
             border:1px solid #5cb85c;
         }
         #Button2:hover{
             background-color:#ffffff;
             color:#5cb85c;
             border:1px solid #5cb85c;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="LOGIN" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="SIGNUP" />
            </div>
      </div>
        
    </form>
</body>
</html>
