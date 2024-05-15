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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadRecord();
       
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT Id, UserName, Email, UserType FROM users", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void linkbtndelete_Click1(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int Id = Convert.ToInt32(GridView1.Rows[rowindex].Cells[1].Text);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM users WHERE Id = @Id", conn);
            cmd.Parameters.AddWithValue("@Id", Id);
            cmd.ExecuteNonQuery();
            conn.Close();
            LoadRecord();
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        //void LoadData()
        //{
        //    SqlCommand comm = new SqlCommand("SELECT UserId,EventID,Name, Address, PhoneNumber, EventDate, EstimatedBudget, EstimatedGuestCount, EventType FROM Events", conn);
        //    SqlDataAdapter d = new SqlDataAdapter(comm);
        //    DataTable dt = new DataTable();
        //    d.Fill(dt);

        //    GridView2.DataSource = dt;
        //    GridView2.DataBind();
        //}

        //protected void btncustdel_Click1(object sender, EventArgs e)
        //{
        //    int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        //    int eventID = Convert.ToInt32(GridView2.Rows[rowindex].Cells[2].Text);
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("DELETE FROM Events WHERE EventID = @EventID", conn);
        //    cmd.Parameters.AddWithValue("@EventID", eventID);
        //    cmd.ExecuteNonQuery();
        //    conn.Close();
        //    LoadData();
        //}


        //protected void linkbtnpackdel_Click(object sender, EventArgs e)
        //{
        //    int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        //    int packageID = Convert.ToInt32(GridView3.Rows[rowindex].Cells[2].Text);
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("DELETE FROM Packages WHERE PackageId = @PackageId", conn);
        //    cmd.Parameters.AddWithValue("@PackageId", packageID);
        //    cmd.ExecuteNonQuery();
        //    conn.Close();
        //    Loadinf();
        //}
        //void Loadinf()
        //{
        //    SqlCommand comm = new SqlCommand("SELECT UserId,PackageId,FullName, Address, PhoneNumber, EventDate, EventType FROM Packages", conn);
        //    SqlDataAdapter d = new SqlDataAdapter(comm);
        //    DataTable dt = new DataTable();
        //    d.Fill(dt);

        //    GridView3.DataSource = dt;
        //    GridView3.DataBind();
        //}

        //protected void Linkbtnupdate_Click1(object sender, EventArgs e)
        //{
        //    Response.Redirect("http://localhost:56397/UpdateCustomization.aspx");
        //}

        //protected void LinkButton_Click1(object sender, EventArgs e)
        //{

        //    Response.Redirect("http://localhost:56397/UpdatePackages.aspx");
        //}

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
        //void LoadPayment()
        //{
        //    SqlCommand comm = new SqlCommand("select PaymentId,CardHolderName,CardNumber,PaymentAmount,PaymentDate,PaymentType,PackageId from Payment", conn);
        //    SqlDataAdapter d = new SqlDataAdapter(comm);
        //    DataTable dt = new DataTable();
        //    d.Fill(dt);

        //    GridView4.DataSource = dt;
        //    GridView4.DataBind();
        //}
        //protected void btn_paydel_Click(object sender, EventArgs e)
        //{
        //    int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
        //    int paymentId = Convert.ToInt32(GridView4.Rows[rowindex].Cells[1].Text);
        //    conn.Open();
        //    SqlCommand cmd = new SqlCommand("DELETE FROM Payment WHERE PaymentId = @PaymentId", conn);
        //    cmd.Parameters.AddWithValue("@PaymentId", paymentId); // Corrected the parameter name
        //    cmd.ExecuteNonQuery();
        //    conn.Close();
        //    LoadPayment();
        //}

        //protected void linkbtnpackdel_Click(object sender, EventArgs e)
        //{

        //}
    }
}
