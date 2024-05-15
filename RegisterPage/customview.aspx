<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customview.aspx.cs" Inherits="RegisterPage.customview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Eventique-Customization</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="Js/Admin.js"></script>

<link href="Css/Admin.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Anton&family=Fira+Sans+Condensed:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Fira+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Libre+Baskerville:ital,wght@0,400;0,700;1,400&family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
<script src="https://kit.fontawesome.com/5c73ef7c28.js" crossorigin="anonymous"></script>

<style>
    /* Styles for tables */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-bottom: 20px;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: center;
    }

    th {
        background-color: #e18a2c;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    /* Additional styles for buttons */
    .btn {
        border-radius: 9999px;
        background-color: #e18a2c;
        color: #fff;
        padding: 5px 15px;
        text-decoration: none;
        cursor: pointer;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">

                    <!-- SIDE BAR-->
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
                        <a href="#">
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
                            <asp:Button ID="btnLogout" Style="border-radius: 9999px; background-color: #e18a2c; color: #fff; padding: 10px 30px; width: 100px; text-decoration: none; cursor: pointer; margin: 10px auto; display: block;" runat="server" Text="Log Out" CssClass="btn nav-link" OnClick="btnLogout_Click" />
                        </li>
                    <div class="admin">
                        <a href="http://localhost:56397/AddAdmin.aspx" Style="border-radius: 9999px; background-color: #e18a2c; color: #fff; padding: 10px 30px; width: 100px; text-decoration: none; cursor: pointer; margin: 10px auto; margin-left: 35px;" text-align: center;" display: block;">Edit</a>
                    </div>
                </ul>
            </div>
        </div>

        <!-- HEADER -->
        <header>
            <div class="head_inner">

                <div class="right-part">
                  <%--  <form>
                        
                    </form>--%>
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
        <!-- MAIN CONTENT -->
    <div class="main-content">
        <div class="info-card">

            <div class="card">
                <div class="card-icon">
                    <span>
                        <i class="fas fa-layer-group"></i>
                    </span>
                </div> 
                <div class="card-detail">
                    <h4>Total Stock</h4>
                    <h2>E£ 650,000</h2>
                </div>
                <p>Increased by 60%</p>
            </div>

            <div class="card">
                <div class="card-icon">
                    <span>
                        <i class="fas fa-money-check-alt"></i>
                    </span>
                </div> 
                <div class="card-detail">
                    <h4>Total Profit</h4>
                    <h2> E£ 10,680,000</h2>
                </div>
                <p>Increased by 50%</p>
            </div>

            <div class="card">
                <div class="card-icon">
                    <span>
                        <i class="fas fa-male"></i>
                    </span>
                </div> 
                <div class="card-detail">
                    <h4>Total Visitors</h4>
                    <h2>250 /per week</h2>
                </div>
                <p>Increased by 40%</p>
            </div>
        </div>


  

            <div class="custom-table" >
                <div class="title">
                    <h2>Customization Users</h2>
                </div>

                <div class="user-table">
                   
                    <asp:LinkButton ID="Linkbtnupdate" Style="border-radius: 9999px; background-color: #e18a2c; color: #fff; padding: 5px 15px; width:40px; text-decoration: none;  cursor: pointer;" runat="server" Onclick="Linkbtnupdate_Click">update</asp:LinkButton>

                    <asp:GridView ID="GridView2" runat="server" Width="100%" HeaderStyle-BackColor="#9933ff" HeaderStyle-ForeColor="White">

                    
                     <columns>
                         <asp:TemplateField>
                             <ItemTemplate>
                                 <asp:LinkButton ID="btncustdel" style="border-radius: 9999px; background-color: #e18a2c; color: #fff; padding: 5px 15px; text-decoration: none; display: inline-block; cursor: pointer;"  OnClientClick="return confirm('Are you sure to delete?');" runat="server" Onclick="btncustdel_Click">Delete</asp:LinkButton>
                             </ItemTemplate>


                         </asp:TemplateField>

                     </columns>
                    </asp:GridView>                

                </div>
            </div>


         

        </div>

    </form>
</body>
<table>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

<table>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>

</html>











