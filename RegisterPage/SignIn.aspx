<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="RegisterPage.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" crossorigin="anonymous"/>
    <link href="Css/signin.css" rel="stylesheet" />
    <style>
        .form {
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 0px 50px;
}

h1 {
    color: hsl(38, 61%, 73%);
}
.input {
    width: 100%;
    margin: 8px;
    padding: 12px 15px;
    background-color: hsla(0, 0%, 13%, 1);
    border: none;
    outline: none;
}
#btnSignIn, #btnSignUp, #btnToSignIn  {
    border-radius: 20px;
    border: 1px solid #363062;
    background: hsl(38, 61%, 73%);
    color: black;
    font-size: 12px;
    font-weight: bold;
    padding: 12px 45px;
    letter-spacing: 1px;
    text-transform: uppercase;
}

.form-container #btnSignIn {
    margin-top: 17px;
    transition: 80ms ease-in;
}

    .form-container #btnSignIn:hover {
        background: black;
        color: hsl(38, 61%, 73%);
    }
    #overlayBtn {
    cursor: pointer;
    position: absolute;
    left: 50%;
    top: 304px;
    transform: translateX(-50%);
    width: 143.67px;
    height: 40px;
    border: 1px solid black;
    background: transparent;
    border-radius: 20px;
}

.overlay {
    position: relative;
    background: hsl(38, 61%, 73%);
    color: black;
    left: -150%;
    height: 100%;
    width: 250%;
    transition: 0.6s ease-in-out;
}


    </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="container">
    <div class="form-container sign-in-container">
        <div class="form" action="#">
            <h1>Sign in</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your account</span>
                            <div class="infield">
             <asp:TextBox ID="txt_EmailSignIn" runat="server" CssClass="infield" placeholder="Email" TextMode="Email" ValidateRequestMode="Enabled"   ></asp:TextBox>
                  <label></label>
                   </div>
                <div class="infield">

              <asp:TextBox ID="txt_PswdSignIn" runat="server" CssClass="infield" placeholder="Password" TextMode="Password" ValidateRequestMode="Enabled"  ></asp:TextBox>
          <label></label>
   </div>
                            
            <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
            <a href="#" class="forgot">Forgot your password?</a>
<%--            <button>Sign In</button>--%>
             <asp:Button ID="btnSignIn" runat="server" Text="Sign In" Onclick="btnSignIn_Click"/>

        </div>
    </div>
    <div class="overlay-container" id="overlayCon">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
                <button>Sign In</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Hello, Friend!</h1>
                <p>Enter your personal details and start journey with us</p>
              
            </div>
        </div>
           <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
        <asp:Button ID="overlayBtn" runat="server" Onclick="overlayBtn_Click" Text="Sign Up" /> 
<%--        <button id="overlayBtn"></button>--%>
    </div>

</div>




    </form>
</body>
</html>
