using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace RegisterPage
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
            {
                pnlAccountDropdown.Visible = true;
                lblUserName.Text = Session["UserName"].ToString();
                int userId = Convert.ToInt32(Session["UserId"]);

                using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
                {
                    connection.Open();
                    string query = "SELECT * FROM [dbo].[users] WHERE Id = @UserId";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@UserId", userId);

                    SqlDataReader reader = command.ExecuteReader();
                    if (reader.Read())
                    {
                        string email = reader["Email"].ToString();

                        // Check if txt_email is not null before setting its text
                        if (txt_email != null)
                        {
                            txt_email.Text = email;
                        }
                    }
                }
            }
            else
            {
                pnlAccountDropdown.Visible = false;
            }
        }

        protected void btn_send_Click(object sender, EventArgs e)
        {
            SmtpClient client = new SmtpClient("smtp.gmail.com");
            client.Port = 587;
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("alaanaderelsayed@gmail.com", "ztonbjghuzfllate");

            MailMessage mailMessage = new MailMessage();
            mailMessage.From = new MailAddress("alaanaderelsayed@gmail.com");
            mailMessage.To.Add(txt_email.Text);
            mailMessage.Subject = "Confirmation Email: Thank You for Your Feedback";

            string clientName = $"{txt_fnam.Text} {txt_lname.Text}";
            string body = $"Dear {clientName},\n\n" +
                          $"Thank you for taking the time to provide us with your valuable feedback. Your input is essential to us as we continuously strive to improve our services.\n\n" +
                          $"Rest assured that your feedback has been received and will be carefully reviewed by our team. We are committed to addressing any concerns you may have and implementing necessary improvements to enhance your experience with us.\n\n" +
                          $"Should you have any further questions or require assistance, please do not hesitate to contact us. We greatly appreciate your support and look forward to serving you again in the future.\n\n" +
                          $"Best regards,\n" +
                          $"Eventique Team";

            mailMessage.Body = body;
            mailMessage.IsBodyHtml = false;

           
            client.Send(mailMessage);
        }


        private bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        protected void mycc_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Account.aspx");
        }

        protected void signout_btn_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
        //private void SendConfirmationEmail(string fullName, string email)
        //{
        //    // Configure SMTP client
        //    SmtpClient client = new SmtpClient("smtp.gmail.com");
        //    client.Port = 587;
        //    client.EnableSsl = true;
        //    client.Credentials = new NetworkCredential("alaanaderelsayed@gmail.com", "ztonbjghuzfllate");

        //    // Create email message
        //    MailMessage mailMessage = new MailMessage();
        //    mailMessage.From = new MailAddress("alaanaderelsayed@gmail.com");
        //    mailMessage.To.Add(email);
        //    mailMessage.Subject = "Confirmation Email From Eventique";
        //    string body = $"Dear {fullName},\n\nThank you for filling out the form!\n\n, We will Consider your feedback!";


        //    mailMessage.Body = body;
        //    mailMessage.IsBodyHtml = false;

        //    // Send email
        //    client.Send(mailMessage);
        //}

    }
}