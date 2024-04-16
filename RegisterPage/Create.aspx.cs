using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace RegisterPage
{
    public partial class Create : System.Web.UI.Page
    {
        //SqlConnection cn; 

        protected void Page_Load(object sender, EventArgs e)
        {
            //cn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");
        }
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=EventWeb;Integrated Security=True;"))
                {
                    cn.Open();

                    // Check if the email already exists in the database
                    SqlCommand checkCmd = new SqlCommand("SELECT COUNT(*) FROM users WHERE Email = @Email", cn);
                    checkCmd.Parameters.AddWithValue("@Email", txt_emailCreate.Text);
                    int existingUserCount = (int)checkCmd.ExecuteScalar();

                    if (existingUserCount > 0)
                    {
                        // User already exists, display error message
                        Response.Write("<script>alert('user with this email already exists!') </script>");
                        txt_emailCreate.Text = txt_passCreate.Text = null;
                    }
                    else
                    {
                        // User does not exist, proceed with registration
                        SqlCommand insertCmd = new SqlCommand("INSERT INTO users (UserName, Email, Password) VALUES (@UserName, @Email, @Password)", cn);
                        insertCmd.Parameters.AddWithValue("@UserName", txt_nameCreate.Text);
                        insertCmd.Parameters.AddWithValue("@Email", txt_emailCreate.Text);
                        insertCmd.Parameters.AddWithValue("@Password", txt_passCreate.Text);
                        insertCmd.ExecuteNonQuery();
                        Response.Write("<script>alert('Registered Successfully!') </script>");
                        txt_nameCreate.Text = txt_emailCreate.Text = txt_passCreate.Text = null;
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "')</script>");
            }
        }


        protected void BtnToSignIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");

        }

        protected void overlayBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/SignIn.aspx");

        }

     
    }
}