using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //cn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection cn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;"))
                {
                    cn.Open();

                    // Check if the email already exists in the database
                    SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM Users WHERE Email = @Email", cn);
                    checkCmd.Parameters.AddWithValue("@Email", txt_emailCreate.Text);
                    int existingUserCount = (int)checkCmd.ExecuteScalar();

                    if (existingUserCount > 0)
                    {
                        // User already exists, display error message
                        lblErrorMessage.Text = "User with this email already exists!.";

                        txt_emailCreate.Text = txt_passCreate.Text = null;
                    }
                    else
                    {
                        // User does not exist, proceed with registration
                        SqlCommand insertCmd = new SqlCommand("INSERT INTO Users (UserName, Email, Password,RoleId, UserType) VALUES (@UserName, @Email, @Password,@RoleId, 'User')", cn);
                        insertCmd.Parameters.AddWithValue("@UserName", txt_nameCreate.Text);
                        insertCmd.Parameters.AddWithValue("@Email", txt_emailCreate.Text);
                        insertCmd.Parameters.AddWithValue("@Password", txt_passCreate.Text);
                        insertCmd.Parameters.AddWithValue("@RoleId", 2);
                        insertCmd.ExecuteNonQuery();
                        //Response.Write("<script>alert('Registered Successfully!') </script>");
                        Response.Redirect("http://localhost:56397/SignIn.aspx");
                        txt_nameCreate.Text = txt_emailCreate.Text = txt_passCreate.Text = null;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "')</script>");
            }
        }

        protected void overlayBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");

        }
    }
}