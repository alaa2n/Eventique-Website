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
    public partial class Packview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
      

                Loadinf();
            }
        }
        SqlConnection conn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");
        void Loadinf()
        {
            SqlCommand comm = new SqlCommand("SELECT UserId,PackageId,FullName, Address, PhoneNumber, EventDate, EventType FROM Packages", conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            d.Fill(dt);

            GridView3.DataSource = dt;
            GridView3.DataBind();
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }

        protected void LinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:56397/UpdatePackages.aspx");

        }

        protected void linkbtnpackdel_Click(object sender, EventArgs e)
        {
            int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            int packageID = Convert.ToInt32(GridView3.Rows[rowindex].Cells[2].Text);
            conn.Open();
            SqlCommand cmd = new SqlCommand("DELETE FROM Packages WHERE PackageId = @PackageId", conn);
            cmd.Parameters.AddWithValue("@PackageId", packageID);
            cmd.ExecuteNonQuery();
            conn.Close();
            Loadinf();
        }
    }
}