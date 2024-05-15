using Stripe;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class pay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             
                LoadPayment();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");

        void LoadPayment()
        {
            SqlCommand comm = new SqlCommand("select PaymentId,CardHolderName,CardNumber,PaymentAmount,PaymentDate,PaymentType,PackageId from Payment", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);

            GridView4.DataSource = dt;
            GridView4.DataBind();
        }
      

        protected void btn_paydel_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int paymentId = Convert.ToInt32(GridView4.Rows[rowindex].Cells[1].Text);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Payment WHERE PaymentId = @PaymentId", conn);
            cmd.Parameters.AddWithValue("@PaymentId", paymentId); // Corrected the parameter name
            cmd.ExecuteNonQuery();
            conn.Close();
            LoadPayment();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
    }
}