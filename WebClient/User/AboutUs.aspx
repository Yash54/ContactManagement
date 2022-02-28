<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AboutUs.aspx.cs" Inherits="WebClient.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="AboutUs.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <div class="bg">
        <div class="container p-5">
            <div class="row">
                <div class="col-sm-4">
                    <div class="card h-100 shadow-sm">
                        <div class="text-center">
                            <div class="img-hover-zoom img-hover-zoom--colorize">
                                <img class="shadow" src="./yash.jpg"
                                    alt="Another Image zoom-on-hover effect">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="clearfix mb-3">
                            </div>
                            <div class="my-2 text-center">
                                <h3>Yash Patel</h3>
                            </div>
                            <div class="box">
                                <div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="https://github.com/Yash54"><i class="fab fa-github fa-2x"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.linkedin.com/in/yash-patel-7155a6192/"><i class="fab fa-linkedin fa-2x"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.instagram.com/yashpatel.2145/"><i class="fab fa-instagram fa-2x"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-sm-4">
                    <div class="card h-100 shadow-sm">
                        <div class="text-center">
                            <div class="img-hover-zoom img-hover-zoom--colorize">
                                <img class="shadow" src="./Luv.jpg"
                                    alt="Another Image zoom-on-hover effect">
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="clearfix mb-3">
                            </div>
                            <div class="my-2 text-center">
                                <h3>Luv Patel</h3>
                            </div>
                            <div class="box">
                                <div>
                                    <ul class="list-inline">
                                        <li class="list-inline-item"><a href="https://github.com/LuvPatel"><i class="fab fa-github fa-2x"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.linkedin.com/in/luv-patel-50b9ab199/"><i class="fab fa-linkedin fa-2x"></i></a></li>
                                        <li class="list-inline-item"><a href="https://www.instagram.com/"><i class="fab fa-instagram fa-2x"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
