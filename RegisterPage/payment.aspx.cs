using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;

namespace RegisterPage
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
      {

            txt_PaymentAmount.Text = (string)Session["EventPrice"];


        }


        protected void btnCheckout_Click(object sender, EventArgs e)
        {
            // Get payment details from form controls
            string paymentAmount = txt_PaymentAmount.Text;
            string paymentType = ddlPaymentType.SelectedValue;
            string cardHolderName = txtCardHolderName.Text;
            string cardNumber = txtCardNumber.Text;
            string expiryDate = txtExpiryDate.Text;
            string cvv = txtCVV.Text;

            // Retrieve the user ID from the session
            int userId = Convert.ToInt32(Session["Id"]);
            string fullname = (string)Session["FullName"];
            string email = (string)Session["Email"];
            string package = (string)Session["package"];
            // Retrieve the packageId from the session
            int packageId = Convert.ToInt32(Session["PackageId"]);

            // Generate a new GUID for the payment
            Guid paymentId = Guid.NewGuid();

            // Insert payment details into the Payment table
            string query = @"INSERT INTO Payment (PackageId, PaymentAmount, PaymentDate, PaymentType, CardHolderName, CardNumber, ExpiryDate, CVV)
                             VALUES (@PackageId, @PaymentAmount, @PaymentDate, @PaymentType, @CardHolderName, @CardNumber, @ExpiryDate, @CVV)";

            using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
            {
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Set command parameters
                    command.Parameters.AddWithValue("@PackageId", packageId);
                    command.Parameters.AddWithValue("@PaymentAmount", paymentAmount);
                    command.Parameters.AddWithValue("@PaymentType", paymentType);
                    command.Parameters.AddWithValue("@CardHolderName", cardHolderName);
                    command.Parameters.AddWithValue("@CardNumber", cardNumber);
                    command.Parameters.AddWithValue("@ExpiryDate", expiryDate);
                    command.Parameters.AddWithValue("@CVV", cvv);
                    command.Parameters.AddWithValue("@PaymentDate", DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));

                    // Open connection and execute command
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
            SendConfirmationEmail(fullname, email);

            // Redirect the user to the thank you page
            Response.Redirect("http://localhost:56397/Thankmsg.aspx");
        }
        private void SendConfirmationEmail(string fullName, string email)
        {
            // Configure SMTP client
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("alaanaderelsayed@gmail.com", "ztonbjghuzfllate");

            // Create email message
            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("alaanaderelsayed@gmail.com");
            mailMessage.To.Add(email);
            mailMessage.Subject = "Payment Confirmation";
            mailMessage.Body = $"Dear {fullName},\n\nThank you for your payment of {txt_PaymentAmount.Text} for the {Session["package"]} Package. Your payment has been successfully processed.\n\nSincerely,\nThe Eventique Team";


           
            mailMessage.IsBodyHtml = false;

            // Send email
            client.Send(mailMessage);
        }
    }


}