<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pack.aspx.cs" Inherits="RegisterPage.pack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Packages</title>
    <link href="Css/package.css" rel="stylesheet" />
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
          </div>

          <div class="input-box">
            <select name="event_type" id="event_type" onchange="showButtons(this.value)" runat="server" required>
              <option value="" disabled selected>Event Type?</option>
              <option value="wedding">Wedding</option>
              <option value="engagement">Engagement</option>
              <option value="birthday">Birthday</option>
              <option value="anniversary">Anniversary</option>
              <option value="formal">Formal</option>
            </select>
          </div>
<div class="buttons" id="buttons-wed" style="display: none;">
    <h3>Choose Your <span>Wedding</span> Package</h3>
        <select name="wedding_package" id="WeddingPackage" runat="server" class="custom-select">
            <option value="" disabled selected>Select a package</option>
            <option value="elegance">Elegance</option>
            <option value="enchanted">Enchanted</option>
            <option value="celestial">Celestial</option>
            <option value="lovebirds">LoveBirds</option>
            <option value="bridalbliss">Bridal Bliss</option>
            <option value="grandgala">Grand Gala</option>
        </select>
    </div>

<div class="buttons" id="buttons-engage" style="display: none;">
    <h3>Choose Your <span>Engagement</span> Package</h3>
        <select name="engagement_package" id="EngagementPackage" runat="server" class="custom-select">
            <option value="" disabled selected>Select a package</option>
            <option value="elegance">Elegance</option>
            <option value="enchanted">Enchanted</option>
            <option value="celestial">Celestial</option>
            <option value="lovebirds">LoveBirds</option>
            <option value="bridalbliss">Bridal Bliss</option>
            <option value="grandgala">Grand Gala</option>
        </select>
</div>

          
          <div class="buttons" id="buttons-birth" style="display: none;">
            <h3>Choose Your <span>Birthday</span> Package</h3>
     <select name="birthday_package" id="BirthdayPackage" runat="server" class="custom-select">
         <option value="" disabled selected>Select a package</option>
         <option value="JoyBash">JoyBash</option>
         <option value="Bliss-Fete">Bliss-Fete</option>
         <option value="CheerChic">CheerChic</option>
         <option value="Happy-Hoopla">Happy-Hoopla</option>
         <option value="Fun Fiesta">Fun Fiesta</option>
         <option value="GalaGlee">GalaGlee</option>
     </select>


          </div>
          
          <div class="buttons" id="buttons-ann" style="display: none;">
            <h3>Choose Your <span>Anniversary</span> Package</h3>
        <select name="anniversary_package" id="AnniversaryPackage" runat="server" class="custom-select">
      <option value="" disabled selected>Select a package</option>
    <option value="JoyBash">JoyBash</option>
    <option value="Bliss-Fete">Bliss-Fete</option>
    <option value="CheerChic">CheerChic</option>
    <option value="Happy-Hoopla">Happy-Hoopla</option>
    <option value="Fun Fiesta">Fun Fiesta</option>
    <option value="GalaGlee">GalaGlee</option>
        </select>
          </div>
          
          <div class="buttons" id="buttons-formal" style="display: none;">
            <h3>Choose Your <span>formal</span> Package</h3>
       <select name="formal_package" id="FormalPackage" runat="server" class="custom-select">
     <option value="" disabled selected>Select a package</option>
    <option value="Black-Tie Bliss">Black-Tie Bliss</option>
    <option value="Prestige">Prestige</option>
    <option value="Opulence">Opulence</option>
    <option value="Grandeur">Grandeur</option>
    <option value="Luxe">Luxe</option>
    <option value="Elite">Elite</option>
           </select>
        </div>

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
