﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class pack : System.Web.UI.Page
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
                            if (Session["eventtype1"] != null)
                            {
                                //string sessionValue = Session["eventtype"].ToString();
                                // Iterate through the dropdown list items
                                foreach (ListItem item in event_type.Items)
                                {
                                    // Check if the current item's value matches the session value
                                    if (item.Value == (string)Session["eventtype1"] || item.Value == (string)Session["eventtype2"])
                                    {
                                        // Enable the matched item
                                        item.Enabled = true;
                                        // Select the matched item
                                    }
                                    else
                                    {
                                        // Disable and deselect other items
                                        item.Enabled = false;
                                    }
                                }
                            }
                            SelectedPackage.Text = (string)Session["package"];


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
                    Session["RedirectUrl"] = "http://localhost:56397/pack.aspx";

                    // Redirect the user to the login page
                    Response.Redirect("~/SignIn.aspx");
                }

            }
        }

        protected void btn_book_Click(object sender, EventArgs e)
        {
            // Check if the user is logged in
            if (Session["UserId"] == null)
            {
                // User is not logged in, redirect them to the login page or display an error message
                Response.Redirect("~/SignIn.aspx");
                return;
            }
            Guid paymentId = Guid.NewGuid(); // Generate a new GUID for the payment
            // Proceed with the INSERT statement for Packages table
            int userId = Convert.ToInt32(Session["UserId"]);

            // Get values from form controls
            string fullName = txt_name.Text;
            string address = txt_address.Text;
            string phoneNumber = txt_phone.Text;
            string email = txt_email.Text;
            DateTime eventDate = Convert.ToDateTime(date.Text);
            string eventType = event_type.SelectedValue;
            string selectedPackage = SelectedPackage.Text;
            if (!IsEventDateAvailable(selectedPackage, eventDate))
            {
                // Event date is not available, display an error message or take appropriate action
                // For example:
                lblError.Text = "The selected event date is not available for booking, Please choose another date";
                return;
            }

            using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
            {
                connection.Open();
                string query = "INSERT INTO Packages (UserId, FullName, Address, PhoneNumber, Email, EventDate, EventType, SelectedEventType) " +
                      "OUTPUT INSERTED.PackageId " +
                      "VALUES (@UserId, @FullName, @Address, @PhoneNumber, @Email, @EventDate, @EventType, @SelectedEventType)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // Add parameters to prevent SQL injection
                    command.Parameters.AddWithValue("@UserId", userId);
                    command.Parameters.AddWithValue("@FullName", fullName);
                    command.Parameters.AddWithValue("@Address", address);
                    command.Parameters.AddWithValue("@PhoneNumber", phoneNumber);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@EventDate", eventDate);
                    command.Parameters.AddWithValue("@EventType", eventType);
                    command.Parameters.AddWithValue("@SelectedEventType", selectedPackage);

                    // Execute the query and retrieve the generated PackageId
                    int packageId = Convert.ToInt32(command.ExecuteScalar());

                    // Store the generated PackageId in the session
                    Session["PackageId"] = packageId;
                    Session["FullName"] = fullName;
                    Session["Email"] = email;
                    Session["package"] = selectedPackage;
                    Session["eventdate"] = eventDate;
                }



                Response.Redirect("http://localhost:56397/payment.aspx");
            }
        }
        // Function to check if the event date is available for booking
        private bool IsEventDateAvailable(string selectedPackage, DateTime eventDate)
        {
            bool isAvailable = false;

            // Query the database to check if the event date is available for the selected event type
            using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
            {
                connection.Open();
                string query = "SELECT COUNT(*) FROM Packages WHERE EventDate = @EventDate AND SelectedEventType = @SelectedEventType";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@EventDate", eventDate);
                    command.Parameters.AddWithValue("@SelectedEventType", selectedPackage);

                    int count = Convert.ToInt32(command.ExecuteScalar());
                    // If count is 0, it means the event date is available; otherwise, it's already booked
                    isAvailable = count == 0;
                }
            }

            return isAvailable;
        }

    }
}