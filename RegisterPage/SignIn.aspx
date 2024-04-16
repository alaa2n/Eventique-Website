<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="RegisterPage.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign In</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="Css/sign.css" rel="stylesheet" />
    <style>
        .form {
            height: 100%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            padding: 0px 50px;
        }

        #btnSignIn,
        #btnSignUp,
        #btnToSignUp {
            border-radius: 20px;
            border: 1px solid #a48254;
            background: #a48254;
            color: #fff;
            font-size: 12px;
            font-weight: bold;
            padding: 12px 45px;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .form-container #btnSignUp,
        #btnSignIn {
            margin-top: 17px;
            transition: 80ms ease-in;
        }

        .form-container #btnSignUp:hover,
        #btnSignIn:hover {
            background: #fff;
            color: #a48254;
        }

        #overlayBtn {
            cursor: pointer;
            position: absolute;
            left: 50%;
            top: 304px;
            transform: translateX(-50%);
            width: 143.67px;
            height: 40px;
            border: 1px solid #fff;
            background: transparent;
            border-radius: 20px;
            color: #fff;
            font-size: 12px;
            font-weight: bold;
            padding: 12px 45px;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .overlay {
            position: relative;
            background: #a48254;
            color: #fff;
            left: -150%;
            height: 100%;
            width: 250%;
            transition: 0.6s ease-in-out;
        }

        .overlay-panel {
            position: absolute;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            padding: 0px 40px;
            text-align: center;
            height: 100%;
            width: 340px;
            transition: 0.6s ease-in-out;
        }

        .social-container a:hover {
            background-color: #a48254;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="container" id="container">
            <div class="form-container sign-in-container">
                <div class="form">
                    <h1>Sign In</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <span>or use your account</span>
                    <div class="infield">
                        <asp:TextBox ID="txt_EmailSignIn" runat="server" CssClass="infield" placeholder="Email" TextMode="Email" ValidateRequestMode="Enabled"></asp:TextBox>
                        <label></label>
                    </div>
                    <div class="infield">
                        <asp:TextBox ID="txt_PswdSignIn" runat="server" CssClass="infield" placeholder="Password" TextMode="Password" ValidateRequestMode="Enabled"></asp:TextBox>
                        <label></label>
                    </div>
                    <a href="#" class="forgot">Forgot your password?</a>
                    <asp:Button ID="btnSignIn" runat="server" Text="Sign In" OnClick="btnSignIn_Click" />
                </div>
            </div>

            <div class="overlay-container" id="overlayCon">
                <div class="overlay">
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                    </div>
                </div>
                <asp:Button ID="overlayBtn" runat="server" OnClick="overlayBtn_Click1" Text="Sign Up" />
            </div>
        </div>
    </form>
</body>
</html>
