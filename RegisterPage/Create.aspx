<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Create.aspx.cs" Inherits="RegisterPage.Create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Create Account</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" crossorigin="anonymous"/>
    <link href="Css/create.css" rel="stylesheet" />
    <style>
 .form{
    height: 100%;
    display:flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 0px 50px;
 }


  #btnSignIn , #btnSignUp, #btnToSignIn {
   border-radius: 20px;
 border: 1px solid #a48254;
 background: #a48254;
 color: #fff;
 font-size: 12px;
 font-weight: bold;
 padding:12px 45px;
 letter-spacing: 1px;
 text-transform: uppercase;
        }
        .form-container  #btnSignUp, #btnSignIn{
   margin-top: 17px;
   transition:80ms ease-in ; 
}
.form-container  #btnSignUp:hover , #btnSignIn:hover{
    background: #fff;
    color:#a48254;
}
  .social-container a {
      border: 1px solid #DDD;
      border-radius: 50%;
      display: inline-flex;
      justify-content: center;
      align-items: center;
      margin: 0px 5px;
      height: 40px;
      width: 40px;
  }
   .social-container a:hover {
       background-color: #a48254; /* Brown color */
   }

    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div class="container">
    <div class="form-container sign-up-container">
        <div class="form">
            <h1>Create Account</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your email for registration</span>
                <div class="infield">
                    <asp:TextBox ID="txt_nameCreate" placeholder="Name" runat="server" required></asp:TextBox>

                    <label></label>
                </div>
                <div class="infield">
                    <asp:TextBox ID="txt_emailCreate" runat="server" placeholder="Email" TextMode="Email" ValidateRequestMode="Enabled" required ></asp:TextBox> 
<%--                    <asp:RegularExpressionValidator ID="EmailValidator" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_emailCreate" ErrorMessage="Invalid Email Address" ValidationGroup="Group1"></asp:RegularExpressionValidator>--%>

                    <label></label>
                </div>
                <div class="infield">
                    <asp:TextBox ID="txt_passCreate" placeholder="Password" TextMode="Password" runat="server" ValidateRequestMode="Enabled" required></asp:TextBox>  
                    <label></label>
                </div>
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" /> 
        </div>
    </div>

    <div class="overlay-container" id="overlayCon">
        <div class="overlay">
            
            <div class="overlay-panel overlay-right">
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
                  <asp:Button ID="btnToSignIn" runat="server" Text="Sign In"  OnClick="BtnToSignIn_Click"/>
            </div>
        </div>
        <asp:Button ID="overlayBtn" runat="server" OnClick="overlayBtn_Click"/>  <%--<button id="overlayBtn"></button>--%>
    </div>
</div>
 </form>
</body>
</html>
