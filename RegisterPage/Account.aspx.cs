using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace RegisterPage
{
    public partial class Account : System.Web.UI.Page
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

                    // Query the database to get the user's data from the AccountInfo table
                    using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
                    {
                        connection.Open();
                        string query = "SELECT TOP 1 * FROM AccountInfo WHERE UserID = @UserID ORDER BY  AcoountID DESC;";
                        SqlCommand command = new SqlCommand(query, connection);
                        command.Parameters.AddWithValue("@UserId", userId);

                        SqlDataReader reader = command.ExecuteReader();
                        if (reader.Read())
                        {
                            // Retrieve user data from the database
                            string username = reader["Username"].ToString();
                            string email = reader["Email"].ToString();
                            string name = reader["Name"].ToString();
                            string Country = reader["Country"].ToString();
                            string phoneNumber = reader["PhoneNumber"].ToString();

                            // Now you have all data for the user, you can use it as needed
                            // For example, you can display it on the page or perform further processing

                            // Display user data on the page
                            txt_username.Text = username;
                            txt_email.Text = email;
                            txt_name.Text = name;
                            country.Value = Country;
                            phone.Text = phoneNumber;

                            lblWelcomeMessage.Text = "Welcome, " + username + "!";

                        }
                        else
                        {
                            // User data not found in the database, handle the case accordingly
                            lblMessage.Text = "User data not found.";
                        }
                    }
                }
            }
        }


        protected void save_btn_Click(object sender, EventArgs e)
        {

            try
            {
                int userId = Convert.ToInt32(Session["UserId"]);

                // Check if a file is uploaded
                
                    using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
                    {
                        connection.Open();


                        // Insert user data into the database
                        string query = "INSERT INTO AccountInfo(UserID,  Username, Name, Email, Country, PhoneNumber) " +
                                       "VALUES(@UserID, @Username, @Name, @Email, @Country, @PhoneNumber)";
                        using (SqlCommand command = new SqlCommand(query, connection))
                        {
                            // Add parameters to prevent SQL injection
                            command.Parameters.AddWithValue("@UserId", userId);
                            command.Parameters.AddWithValue("@Username", txt_username.Text);
                            command.Parameters.AddWithValue("@Name", txt_name.Text);
                            command.Parameters.AddWithValue("@Email", txt_email.Text);
                            command.Parameters.AddWithValue("@Country", country.Value);
                            command.Parameters.AddWithValue("@PhoneNumber", phone.Text);

                            command.ExecuteNonQuery();

                            // Display a success message
                            lblMessage.Text = "Data saved successfully.";
                        }
                    }
            }
            catch (Exception ex)
            {
                // Handle specific exceptions here
                lblMessage.Text = "An error occurred while saving data: " + ex.Message;
            }
        }



        protected void cancel_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");

        }

        protected void btn_changepsw_Click(object sender, EventArgs e)
        {
            int userId = Convert.ToInt32(Session["UserId"]);

            using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
            {
                string oldPassword = txt_password.Text;
                string newPassword = txt_newpass.Text;
                string confirmPassword = txt_confpass.Text;

                //// Hash the passwords (you'll need a suitable hashing method, like bcrypt or SHA256)
                //string hashedOldPassword = HashPassword(oldPassword);
                //string hashedNewPassword = HashPassword(newPassword);

                connection.Open();

                // Check if the old password matches the one in the database
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Id = @UserId AND Password = @Password", connection);
                cmd.Parameters.AddWithValue("@UserId", userId);
                cmd.Parameters.AddWithValue("@Password", oldPassword);
                int count = (int)cmd.ExecuteScalar();

                if (count == 1)
                {
                    // Check if the new password and confirm password match
                    if (newPassword == confirmPassword)
                    {
                        // Update the password
                        SqlCommand updateCmd = new SqlCommand("UPDATE Users SET Password = @NewPassword WHERE Id = @UserId", connection);
                        updateCmd.Parameters.AddWithValue("@NewPassword", newPassword);
                        updateCmd.Parameters.AddWithValue("@UserId", userId);
                        updateCmd.ExecuteNonQuery();

                        label1.Text = "Password updated successfully!";
                    }
                    else
                    {
                        label1.Text = "New Password and Confirm Password should be the same!";
                    }
                }
                else
                {
                    label1.Text = "Please check your old password.";
                }
            }
        }

      

    }
}