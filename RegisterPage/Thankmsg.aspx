<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thankmsg.aspx.cs" Inherits="RegisterPage.Thankmsg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Css/thank.css" rel="stylesheet" />
    <title>Thank you</title>
    <style>
        .popup .dismiss-btn {
    margin-top: 15px;
}
.popup .dismiss-btn .btn{
         padding: 10px 20px;
         background: hsl(38, 61%, 73%);
         color: black;
         border: 2px solid hsl(38, 61%, 73%);
         font-size: 16px;
         font-weight: 500;
         outline: none;
         border-radius: 10px;
         transition: all 300ms ease-in-out;
}
.popup .dismiss-btn .btn:hover{
     color: black;
  background: #f5f5f5;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
   <div class="popup center">
        <div class="icon">
            <i class="fa fa-check"></i>
        </div>
        <div class="title">
            Success!
        </div>
        <div class="description">We are delighted to confirm your recent booking with us! Thank you for choosing "Eventique" for your special event. It’s our pleasure to assist you in bringing your vision to life.</div>
    <div class="dismiss-btn">
       <asp:Button ID="dismiss_btn" runat="server" Text="Dismiss" CssClass="btn" onclick="dismiss_btn_Click" />

    </div>
    </div>
    <div class="center">
        <button id="open-popup-btn">
            Submit
        </button>
    </div>
    







    </form>
</body>
</html>
