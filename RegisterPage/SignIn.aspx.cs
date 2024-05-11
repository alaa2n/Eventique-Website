using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Context.User.Identity.IsAuthenticated)
                {
                    lblMessage.Text = "You are already logged in.";
                }
                else
                {
                    lblMessage.Text = "";
                }
            }
        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            //Check if the user is already logged in
            if (Session["UserName"] != null)
            {
                // User is already logged in, display a message
                lblErrorMessage.Text = "You are already logged in!";
                return;
            }

            try
            {
                // Retrieve user credentials from the login form
                string email = txt_EmailSignIn.Text.Trim();
                string password = txt_PswdSignIn.Text.Trim();

                using (SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
                {
                    connection.Open();
                    string query = "select Id, UserName, Email, RoleId from [dbo].[users] WHERE Email = @Email AND Password = @Password";
                    ;
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Email", email);
                    command.Parameters.AddWithValue("@Password", password);

                    SqlDataReader reader = command.ExecuteReader();
            
                    if (reader.Read())
                    {
                        int userId = Convert.ToInt32(reader["Id"]);
                        string userName = reader["UserName"].ToString();
                        int roleId = Convert.ToInt32(reader["RoleId"]);
                        Session["UserId"] = userId;
                        Session["UserName"] = userName;
                        // Check if the user is the admin
                        if (roleId == 1)
                        {
                            // Admin login successful
                            Session["UserName"] = userName;
                            Response.Redirect("http://localhost:56397/Admin.aspx");
                        }
                        else
                        {
                            //int userId = Convert.ToInt32(reader["Id"]);
                            //string UserName = reader["UserName"].ToString();

                            // Set session variables
                            //Session["UserId"] = userId;
                            //Session["UserName"] = UserName;
                            //// After successful sign-in
                            if (Session["RedirectUrl"] != null)
                            {
                                // Redirect the user to the previously requested page
                                Response.Redirect(Session["RedirectUrl"].ToString());
                            }
                            else
                            {
                                // If no stored URL found, redirect the user to a default page
                                Response.Redirect("~/Home.aspx");
                            }

                        }

                    }
                    else
                    {
                        // User not found or incorrect credentials
                        lblErrorMessage.Text = "Wrong Email or Password!";
                    }

                }

            }
            catch (Exception ex)
            {
                // Handle any errors
                lblErrorMessage.Text = "An error occurred: " + ex.Message;
            }
        }


        private bool AuthenticateUser(string email, string password)
        {
            // Assuming you have a database table named 'users' with columns 'Email' and 'Password'
            string connectionString = @"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM users WHERE Email = @Email AND Password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);

                connection.Open();
                int count = (int)command.ExecuteScalar();
                return count > 0;
            }
        }

        protected void BtnToSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Create.aspx");

        }

        protected void overlayBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Create.aspx");

        }
    }
}