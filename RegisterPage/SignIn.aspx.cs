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
        //SqlConnection cn;
        protected void Page_Load(object sender, EventArgs e)
        {
            //cn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");
        }
        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection cn = new SqlConnection("Data Source=.;Initial Catalog=EventWeb;Integrated Security=True;"))
                {
                    cn.Open();
                    string query = "SELECT * FROM [dbo].[users] WHERE Email = @Email AND Password = @Password";
                    SqlCommand cm = new SqlCommand(query, cn);
                    cm.Parameters.AddWithValue("@Email", txt_EmailSignIn.Text);
                    cm.Parameters.AddWithValue("@Password", txt_PswdSignIn.Text);
                    SqlDataReader sqlDataReader = cm.ExecuteReader();

                    if (sqlDataReader.Read())
                    {
                        Response.Redirect("http://localhost:56397/home.aspx");               }
                    else
                    {
                        Response.Write("<script>alert('Wrong Email or Password!')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "')</script>");
            }
        }

        protected void BtnToSignUp_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Create.aspx");

        }

        protected void overlayBtn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Create.aspx");

        }

       

       
    }
}