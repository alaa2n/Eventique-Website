using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class payment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // You can add any logic needed on page load here
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

            // Redirect the user to the thank you page
            Response.Redirect("http://localhost:56397/Thankmsg.aspx");
        }
    }


}