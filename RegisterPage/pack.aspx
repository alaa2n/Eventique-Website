<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pack.aspx.cs" Inherits="RegisterPage.pack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Packages</title>
    <link href="Css/package.css" rel="stylesheet" />
    <style>

.user-details .input-box .input2 {
        width: calc(100% / 2 - 20px);
    margin-bottom: 15px;
        display: block;
    margin-bottom: 5px;
    height: 30px;
    width: 100%;
    outline: none;
    border-radius: 5px;
    border: 1px solid black;
    padding-left: 15px;
    font-size: 16px;
    border-bottom-width: 2.5px;
    transition: all 0.3 ease;
    background: hsl(38, 19%, 75%);
}
    .user-details .input-box .span {
        animation: glow 1.5s ease-in-out infinite alternate;
    }

@keyframes glow {
    0% {
        text-shadow: 0 0 15px #1100ff;
    }

    100% {
        text-shadow: 0 0 20px #1100ff;
    }
}
       .user-details .input-box  .details2 {
 margin-bottom: 5px;
  font-size: 18px;
  font-weight: 500;}
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
        Pick Your Event
      </div>

      <hr>

      <div class="form" action="#">
        <div class="user-details">

          <div class="input-box">
            <span class="details">Full Name </span> 
              <asp:TextBox ID="txt_name" placeholder="Enter Full Name" required CssClass="input" runat="server"></asp:TextBox>
                <asp:Label ID="lblMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
          </div>

          <div class="input-box">
            <span class="details">Address </span> 
           <asp:TextBox ID="txt_address" placeholder="City, street, house num" required CssClass="input" runat="server"></asp:TextBox>

          </div>

          <div class="input-box">
            <span class="details">Phone Number </span> 
            <asp:TextBox ID="txt_phone" placeholder="Enter your Number" required CssClass="input" runat="server"></asp:TextBox>
          </div>

          <div class="input-box">
            <span class="details">Email </span>
           <asp:TextBox ID="txt_email" placeholder="Enter active Email" required CssClass="input" runat="server"></asp:TextBox>
          </div>
          

          <div class="input-box">
            <span class="details"> Event Date </span> 
          <asp:TextBox ID="date" placeholder="Enter your Number" required CssClass="input" TextMode="Date" runat="server"></asp:TextBox>
             <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>

          </div>
               <div class="input-box">
            <span class="details">Your Selected <span class="span"> Package </span> </span> 
   <asp:Label ID="SelectedPackage" CssClass="input2" runat="server"></asp:Label>

 </div>

          <div class="input-box">
    <%--        <select name="event_type" id="event_type" onchange="showButtons(this.value)" runat="server" required>
              <option value="" disabled selected>Event Type?</option>
              <option value="wedding">Wedding</option>
              <option value="engagement">Engagement</option>
              <option value="birthday">Birthday</option>
              <option value="anniversary">Anniversary</option>
              <option value="formal">Formal</option>--%>

                 <span class="details2">Event Type</span> 
                <asp:DropDownList id="event_type" runat="server">
   <asp:ListItem Text="Event Type?" Value="event" Selected></asp:ListItem>
    <asp:ListItem Text="Wedding" Value="Wedding"></asp:ListItem>
    <asp:ListItem Text="Engagement" Value="Engagement"></asp:ListItem>
    <asp:ListItem Text="Formal" Value="Formal"></asp:ListItem>
    <asp:ListItem Text="Birthday" Value="Birthday"></asp:ListItem>
    <asp:ListItem Text="Anniversary" Value="Anniversary"></asp:ListItem>
   <asp:ListItem Text="Business" Value="Business"></asp:ListItem>

</asp:DropDownList>

          </div>
<%--<div class="buttons" id="buttons-wed" style="display: none;">--%>
<%--    <h3>Choose Your <span>Wedding</span> Package</h3>
        <select name="wedding_package" id="WeddingPackage" runat="server" class="custom-select">
            <option value="" disabled selected>Select a package</option>
            <option value="elegance">Elegance</option>
            <option value="enchanted">Enchanted</option>
            <option value="celestial">Celestial</option>
            <option value="lovebirds">LoveBirds</option>
            <option value="bridalbliss">Bridal Bliss</option>
            <option value="grandgala">Grand Gala</option>
        </select>--%>
   

        <center>
        <div class="event-detail">
              <asp:Button ID="btn_book" runat="server" Text="Book" CssClass="button-sub" OnClick="btn_book_Click" />
        </div> 
        </center>


      </div>
    </div>
      <script src="Js/pack.js"></script>

    </form>
</body>
</html>
