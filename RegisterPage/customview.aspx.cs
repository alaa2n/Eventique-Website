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
    public partial class customview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                LoadData();
                
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");
        void LoadData()
        {
            SqlCommand comm = new SqlCommand("SELECT UserId,EventID,Name, Address, PhoneNumber, EventDate, EstimatedBudget, EstimatedGuestCount, EventType,Details FROM Events", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);

            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        protected void Linkbtnupdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:56397/UpdateCustomization.aspx");
        }

        protected void btncustdel_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int eventID = Convert.ToInt32(GridView2.Rows[rowindex].Cells[2].Text);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Events WHERE EventID = @EventID", conn);
            cmd.Parameters.AddWithValue("@EventID", eventID);
            cmd.ExecuteNonQuery();
            conn.Close();
            LoadData();
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
    }
}