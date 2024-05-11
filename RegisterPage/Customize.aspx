<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customize.aspx.cs" Inherits="RegisterPage.Customize" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Customize</title>
    <link href="Css/Customize.css" rel="stylesheet" />
    <style>
.button {
  all: unset;
  display: flex;
  justify-content: center; 
  align-items: center;
  position: relative;
  left: 430px;
  bottom: 30px;
  padding: 0.6em 2em;
  border: #141414 solid 0.15em;
  border-radius: 0.25em;
  color: #0d0d0e;
  font-size: 20px;
  align-content: center;
  font-weight: 600;
  cursor: pointer;
  overflow: hidden;
  transition: border 300ms, color 300ms;
  user-select: none;
}
.button p {
  z-index: 1;
}

.button:hover {
  color: #212121;
}

.button:active {
  border-color: #0b0c0c;
}

.button::after,
.button::before {
  content: "";
  position: absolute;
  width: 9em;
  aspect-ratio: 1;
  background: #101011;
  opacity: 50%;
  border-radius: 50%;
  transition: transform 500ms, background 300ms;
}


.button::before {
  left: 0;
  transform: translateX(-8em);
}

.button::after {
  right: 0;
  transform: translateX(8em);
}

.button:hover:before {
  transform: translateX(-1em);
  color: #eadcdc;
}

.button:hover:after {
  transform: translateX(1em);
  color: #eadcdc;
}

.button:active:before,
.button:active:after {
  background: #0a0a0b;
}

    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="area" >

  <ul class="circles">
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
          <li></li>
  </ul>


  <div class="container">

      <div class="title">
        Customize Your Event
      </div>

      <hr>

      <div class="form" action="#">
        <div class="user-details">

          <div class="input-box">
            <span class="details">Full Name </span>
              <asp:TextBox ID="txt_name" runat="server" placeholder="Enter Full Name" required CssClass="input"></asp:TextBox>
               <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>

          </div>

          <div class="input-box">
            <span class="details">Address </span> 
           <asp:TextBox ID="txt_address" runat="server" placeholder="City, street, house num" required CssClass="input"></asp:TextBox>

          </div>

          <div class="input-box">
            <span class="details">Phone Number </span> 
            <asp:TextBox ID="txt_phone" runat="server"  placeholder="Enter your Number" required CssClass="input"></asp:TextBox>

          </div>

          <div class="input-box">
            <span class="details">Email </span> 
           <asp:TextBox ID="txt_email" runat="server" placeholder="Enter active Email" required CssClass="input"></asp:TextBox>

          </div>
          

          <div class="input-box">
            <span class="details"> Event Date </span> 
            <asp:TextBox ID="date" runat="server"  placeholder="Enter the date" TextMode="Date" required CssClass="input"></asp:TextBox>

          </div>

          <div class="input-box">
            <span class="details">Details </span> 
            <asp:TextBox ID="txt_details" runat="server"   placeholder="ex:time, theme, specifications..." required style="height: 70px;" CssClass="input"></asp:TextBox>

          </div>

          <div class="input-box">
            <span class="details">Estimated Budget </span> 
            <asp:TextBox ID="txt_budget" runat="server"   placeholder="### EGP" required CssClass="input"></asp:TextBox>

          </div>

          <div class="input-box">
            <span class="details">Estimated Guest Count </span> 
           <asp:TextBox ID="txt_countguest" runat="server" placeholder="Enter Count" required CssClass="input"></asp:TextBox>

          </div>

        </div>
<div class="event-detail">

    <div class="input-box">
    <span class="details">Event Type: </span>
    <select name="event_type" id="event_type" runat="server" required>
        <option value="" disabled selected>What kind of event?</option>
        <option value="wedding">Wedding</option>
        <option value="engagement">Engagement</option>
        <option value="birthday">Birthday</option>
        <option value="anniversary">Anniversary</option>
        <option value="formal">Formal</option>
    </select>
</div>

    <asp:Button ID="bookbtn" runat="server"  Text="Book" CssClass="button" OnClick="bookbtn_Click"/>
      </div>
    </div>
  </div>
            <script src="Js/Customize.js"></script>
    </form>

</body>
</html>
