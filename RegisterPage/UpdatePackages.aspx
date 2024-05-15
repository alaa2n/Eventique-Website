<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdatePackages.aspx.cs" Inherits="RegisterPage.UpdatePackages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Update-Package</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
   <link href="Css/addadmin.css" rel="stylesheet" />
   <script src="Js/addadmin.js"></script>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Fira+Sans+Condensed:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/5c73ef7c28.js" crossorigin="anonymous"></script>


</head>
<body>
    <form id="form1" runat="server">
   <div class="side-bar">
    <div class="logo">
        <a href="#"><h1>Eventique</h1></a>
        <a href="#"><img src="images/logo5.png" /></a>
    </div>

    <div class="avatar">
        <div class="avatar-img">
            <img src="images/avatar.png" />
        </div>
        <div class="name-pos">
            <h3><%= Session["UserName"] != null ? Session["UserName"].ToString() : "" %></h3>
        </div>
    </div>

    <div class="side-bar-nav">
        <ul>
            <li>
                <a href="http://localhost:56397/Admin.aspx">
                    <span>
                        <i class="fas fa-home"></i>
                    </span>
                    <span class="nav-link">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="http://localhost:56397/customview.aspx">
                    <span>
                        <i class="fab fa-uikit"></i>
                    </span>
                    <span class="nav-link-custom">Customization</span>
                </a>
            </li>
            <li>
                <a href="http://localhost:56397/Packview.aspx">
                    <span>
                        <i class="fas fa-cubes"></i>
                    </span>
                    <span class="nav-link-pack">Packages</span>
                </a>
            </li>
              <li>
                    <a href="http://localhost:56397/pay.aspx">
                        <span>
                            <i class="fas fa-table"></i>
                        </span>
                        <span class="nav-link">Payment</span>
                    </a>                    
                </li>
                       <li>
                            <asp:Button ID="btnLogout" Style="border-radius: 9999px; background-color: #e18a2c; color: #fff; padding: 10px 30px; width: 100px; text-decoration: none; cursor: pointer; margin: 10px auto; display: block;" runat="server" Text="Log Out" CssClass="btn nav-link" Onclick="btnLogout_Click1" />
                        </li>
                    <div class="admin">
                        <a href="http://localhost:56397/Admin.aspx" Style="border-radius: 9999px; background-color: #e18a2c; color: #fff; padding: 10px 30px; width: 100px; text-decoration: none; cursor: pointer; margin: 10px auto; margin-left: 35px;" text-align: center;" display: block;" >Back</a>
                    </div>
        </ul>
    </div>
</div>

<!-- HEADER -->
<header>
    <div class="head_inner">
        <div class="right-part">
            <asp:TextBox ID="txtSearch" runat="server" placeholder="Search..." CssClass="search-box" ></asp:TextBox>
            <asp:Button ID="btnSearch" runat="server" Text="Search" Style="border-radius: 20px; background-color: #e18a2c; color: #fff; padding: 5px 15px; text-decoration: none; cursor: pointer;" Onclick="btnSearch_Click1">
              </asp:Button>
</div>
        <div class="left-part">
            <ul>
                <li>
                    <div class="profile">
                        <div class="avatar-img">
                            <img src="images/avatar.png" style="width: 60px; height: auto;" />
                        </div>
                        <div class="avatar-name">
                            <h3><%= Session["UserName"] != null ? Session["UserName"].ToString() : "" %></h3>
                        </div>
                    </div>
                </li>
                <li class="have-dots">
                    <span>
                        <i class="far fa-envelope"></i>
                    </span>
                </li>
                <li class="have-dots">
                    <span>
                        <i class="far fa-bell"></i>
                    </span>
                </li>
                <li>
                    <span class="bar">
                        <i class="fas fa-bars"></i>
                    </span>
                </li>
            </ul>
        </div>
    </div>
</header>

<div class="main-content">
            <div class="title">
                <h2>Update Packages</h2>
            </div>
            <hr />
            <br />
            <div class="form-wrapper">
                <div class="input-box">
                    <span class="details">Address</span>
                    <asp:TextBox ID="txt_address" placeholder="New Address" runat="server"></asp:TextBox>
                </div>
                     <div class="input-box">
                        <span class="details">Phone Number</span>
                        <asp:TextBox ID="txt_phoneNum" placeholder="Update your phone number" runat="server"></asp:TextBox>
                    </div>
                <div class="input-box">
                    <span class="details">Email</span>
                    <asp:TextBox ID="txt_email" runat="server" placeholder="Enter active Email"></asp:TextBox>
                </div>
                <div class="input-box">
                    <span class="details">Event Date</span>
                    <asp:TextBox runat="server" ID="txt_date" placeholder="Enter your event date"></asp:TextBox>
                </div>
                <div>
                     <asp:Label ID="lblAddress" runat="server" Text=""></asp:Label><br />
 <asp:Label ID="lblPhoneNumber" runat="server" Text=""></asp:Label><br />
 <asp:Label ID="lblEventDate" runat="server" Text=""></asp:Label><br />
 <asp:Label ID="lblDetails" runat="server" Text=""></asp:Label><br />
 <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label><br />


                    <asp:Label ID="lblSuccessMessage" runat="server" CssClass="success-message" Visible="true" ForeColor="Green"></asp:Label>
                    <asp:Label ID="lblErrorMessage" runat="server" Visible="false" ForeColor="Red"></asp:Label>
                </div>
                <asp:Button ID="btn_updatePack" runat="server" Text="Update" CssClass="custom-button" Onclick="btn_updatePack_Click1" />
            </div>
        </div>

        </form>
    </body>
    </html>