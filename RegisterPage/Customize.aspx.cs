using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Stripe;


namespace RegisterPage
{
    public partial class Customize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if the session variable exists and is not null
                if (Session["UserId"] != null)
                {
                    // Retrieve the user ID from the session
                    int userId = Convert.ToInt32(Session["UserId"]);

                    // Query the database to get all data for the user based on the user ID
                    using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
                    {
                        connection.Open();
                        string query = "SELECT * FROM [dbo].[users] WHERE Id = @UserId";
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@UserId", userId);

                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            // Retrieve user data from the database
                            string username = reader["Username"].ToString();
                            string email = reader["Email"].ToString();

                            // Now you have all data for the user, you can use it as needed
                            // For example, you can display it on the page or perform further processing

                            // Example: Display user data on the page
                            txt_name.Text = username;
                            txt_email.Text = email;
                        }
                        else
                        {
                            // User not found in the database, handle the case accordingly
                            // For example, display an error message or redirect the user
                            lblMessage.Text = "User not found.";
                        }
                    }
                }
                else
                {
                    // Session variable not found, store the current URL
                    Session["RedirectUrl"] = "http://localhost:56397/Customize.aspx";

                    // Redirect the user to the login page
                    Response.Redirect("~/SignIn.aspx");


                }
            }
        }


        protected void bookbtn_Click(object sender, EventArgs e)
        {
            // Check if the user is logged in
            if (Session["UserId"] == null)
            {
                // User is not logged in, redirect them to the login page or display an error message
                Response.Redirect("~/SignIn.aspx");
                return;
            }

            // Proceed with the INSERT statement for Events table
            int userId = Convert.ToInt32(Session["UserId"]);

            using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
            {
                connection.Open();
                string query = "INSERT INTO Events (UserId, Name, Address, PhoneNumber, Email, EventDate, Details, EstimatedBudget, EstimatedGuestCount, EventType, IsCustomized) " +
                             "VALUES (@UserId, @Name, @Address, @PhoneNumber, @Email, @EventDate, @Details, @EstimatedBudget, @EstimatedGuestCount, @EventType, @IsCustomized)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@UserId", userId);
                    command.Parameters.AddWithValue("@Name", txt_name.Text);
                    command.Parameters.AddWithValue("@Address", txt_address.Text);
                    command.Parameters.AddWithValue("@PhoneNumber", txt_phone.Text);
                    command.Parameters.AddWithValue("@Email", txt_email.Text);
                    command.Parameters.AddWithValue("@EventDate", Convert.ToDateTime(date.Text));
                    command.Parameters.AddWithValue("@Details", txt_details.Text);
                    command.Parameters.AddWithValue("@EstimatedBudget", txt_budget.Text);
                    command.Parameters.AddWithValue("@EstimatedGuestCount", txt_countguest.Text);
                    command.Parameters.AddWithValue("@EventType", event_type.Value);
                    command.Parameters.AddWithValue("@IsCustomized", true);

                    command.ExecuteNonQuery();

                    SendConfirmationEmail(txt_name.Text, txt_email.Text);

                    Session["eventdate2"] = Convert.ToDateTime(date.Text);

                    // Redirect or display a success message
                    Response.Redirect("~/Thankmsg.aspx");

                }
            }
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
            mailMessage.Subject = "Confirmation Email From Eventique";
            string body = $"Dear {fullName},\n\nThank you for filling out the form!\n\n";
            body += "Here are the details of your package:\n";
            body += $"Name: {txt_name.Text}\n";
            body += $"Address: {txt_address.Text}\n";
            body += $"Phone Number: {txt_phone.Text}\n";
            body += $"Email: {txt_email.Text}\n";
            body += $"Event Date: {date.Text}\n";
            body += $"Details: {txt_details.Text}\n";
            body += $"Estimated Budget: {txt_budget.Text}\n";
            body += $"Estimated Guest Count: {txt_countguest.Text}\n";
            body += $"Event Type: {event_type.Value}\n\n";
            body += "We will contact you as soon as possible.";

            mailMessage.Body = body;
            mailMessage.IsBodyHtml = false;

            // Send email
            client.Send(mailMessage);
        }

    }


}


    















