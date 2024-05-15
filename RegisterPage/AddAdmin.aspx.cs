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


        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
             Response.Redirect("~/SignIn.aspx");
        }

        protected void btnAddAdmin_Click1(object sender, EventArgs e)
        {
            try
            {
                // Retrieve admin information from the form fields
                string email = txtEmail.Text;
                string password = txtPassword.Text;

                // Validate input if necessary

                // Connect to the database and execute the INSERT query
                using (SqlConnection cn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
                {
                    cn.Open();
                    SqlCommand command = new SqlCommand("INSERT INTO [dbo].[users] (UserName, Email, Password, RoleId, UserType) VALUES (@UserName, @Email, @Password,@RoleId, 'Admin')", cn);
                    command.Parameters.AddWithValue("@UserName", txtUserName.Text);
                    command.Parameters.AddWithValue("@Email", txtEmail.Text);
                    command.Parameters.AddWithValue("@Password", txtPassword.Text);
                    command.Parameters.AddWithValue("@RoleId", 1);



                    int rowsAffected = command.ExecuteNonQuery();

                    if (rowsAffected > 0)
                    {
                        // Insert successful
                        lblSuccessMessage.Text = "Admin added successfully!";
                        lblSuccessMessage.Visible = true;
                        txtUserName.Text = "";
                        txtEmail.Text = "";
                        txtPassword.Text = "";
                    }
                    else
                    {
                        // Insert failed
                        lblSuccessMessage.Text = "Failed to add admin. Please try again.";
                        lblSuccessMessage.Visible = true;
                    }



                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions
                Response.Write("<script>alert('An error occurred: " + ex.Message + "')</script>");
            }
        }
    }
}