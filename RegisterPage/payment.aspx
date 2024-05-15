<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment.aspx.cs" Inherits="RegisterPage.payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="Css/pay.css">
    
   
<title>Payment</title>
    <style>
        .input_field2 {
    width: auto;
    height: 30px;
    padding: 0 0 0 16px;
    font-weight:500px;
    border-radius: 9px;
    outline: none;
    background-color: #F2F2F2;
    border: 1px solid #e5e5e500;
    transition: all 0.3s cubic-bezier(0.15, 0.83, 0.66, 1);
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
  <div class="overlay"></div> 
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
        <div class="modal">
      <div class="form">
          <div class="payment--options">
          </div>
        
          <div class="separator">
              <hr class="line">
              <h2 class="headline-1 section-title"> Payment</h2>
              <hr class="line">
          </div>
             <div class="credit-card-info--form">
            <div class="input_container">
              <label for="password_field" class="input_label">Card Holder full name</label>
              <asp:TextBox ID="txtCardHolderName"  runat="server" class="input_field" type="text" name="input-name" title="Inpit title" placeholder="name" ></asp:TextBox>
            </div>
                <div class="input_container">
              <label for="password_field" class="input_label">Card Number</label>
             <asp:TextBox ID="txtCardNumber" runat="server"  class="input_field" type="number" name="input-name" title="Inpit title" placeholder="0000 0000 0000 0000"></asp:TextBox>
            </div>
                 <div class="input_container">
              <label for="password_field" class="input_label">Amount</label>
                     <asp:Label ID="txt_PaymentAmount" runat="server" class="input_field2" ></asp:Label>
<%--              <asp:TextBox ID="txt_PaymentAmount" runat="server" class="input_field" type="number" name="input-name" title="Inpit title"></asp:TextBox>--%>

            </div>
                  <div class="input_container">
              <label for="payment_type" class="input_label">Payment Type</label>
                 <asp:DropDownList ID="ddlPaymentType" runat="server">
          <asp:ListItem Text="Select Payment Type" Value="CreditCard" Selected></asp:ListItem>
          <asp:ListItem Text="Credit Card" Value="CreditCard"></asp:ListItem>
          <asp:ListItem Text="Debit Card" Value="DebitCard"></asp:ListItem>
          
      </asp:DropDownList>
          </div>

                        <div class="input_container">
              <label for="password_field" class="input_label">Expiry Date / CVV</label>
              <div class="split">
            <asp:TextBox ID="txtExpiryDate" runat="server" class="input_field" type="text" name="input-name" title="Expiry Date" placeholder="01/23" ></asp:TextBox>
             <asp:TextBox ID="txtCVV" runat="server" class="input_field" type="number" name="cvv" title="CVV" placeholder="CVV" ></asp:TextBox>

            </div>
            </div>

          <center>
          <asp:Button ID="btnCheckout" runat="server" CssClass="purchase--btn" Text="Checkout" OnClick="btnCheckout_Click" />
              </center>
      </div>
    </div>
              <br>
        <br>
        <br>
       </div>  

     <script>
  const modal = document.querySelector('.modal');
const overlay = document.querySelector('.overlay');

modal.addEventListener('click', () => {
    modal.classList.toggle('clicked');
});

</script>

    </form>
</body>
</html>
