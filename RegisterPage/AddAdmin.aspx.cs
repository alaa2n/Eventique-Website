using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class AddAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddAdmin_Click(object sender, EventArgs e)
        {
            try
            {
                // Retrieve admin information from the form fields
                string adminName = txtUserName.Value.Trim();
                string email = txtEmail.Value.Trim();
                string password = txtPassword.Value.Trim();

                // Validate input if necessary

                // Connect to the database and execute the INSERT query
                using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
                {
                    connection.Open();
                    string query = "INSERT INTO users (UserName, Email, Password, RoleId, UserType) VALUES (@UserName, @Email, @Password, @RoleId, @UserType)";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@UserName", adminName);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);
                    command.Parameters.AddWithValue("@RoleId", 1);
                    command.Parameters.AddWithValue("@UserType", "admin");

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {

                        lblSuccessMessage.Text = "Admin added successfully!";
                        lblSuccessMessage.Visible = true;
                        txtUserName.Value = "";
                        txtEmail.Value = "";
                        txtPassword.Value = "";
                    }
                    else
                    {
                        // Handle the case where the admin was not added
                        // Display an error message or take appropriate action
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                // Display an error message or log the exception
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
             Response.Redirect("~/SignIn.aspx");
        }


    }
}