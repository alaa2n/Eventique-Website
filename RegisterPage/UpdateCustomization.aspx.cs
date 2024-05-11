using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class UpdateCustomization : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection Conn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");

        protected void btnupdatecust_Click(object sender, EventArgs e)
        {
            try
            {
                Conn.Open();
                SqlCommand command = new SqlCommand("UPDATE Events SET Address = @Address, PhoneNumber = @PhoneNumber, EventDate = @EventDate, Details = @Details, EstimatedBudget = @EstimatedBudget, EstimatedGuestCount = @EstimatedGuestCount WHERE EventID = @EventID", Conn);
                command.Parameters.AddWithValue("@Address", txt_address.Text);
                command.Parameters.AddWithValue("@PhoneNumber", txt_Phone.Text);
                command.Parameters.AddWithValue("@EventDate", txt_date.Text);
                command.Parameters.AddWithValue("@Details", txt_details.Text);
                command.Parameters.AddWithValue("@EstimatedBudget", txt_budget.Text);
                command.Parameters.AddWithValue("@EstimatedGuestCount", txt_guestCount.Text);
                command.Parameters.AddWithValue("@EventID", int.Parse(txtSearch.Text));
                command.ExecuteNonQuery();
                Conn.Close();
                lblMessage.Text = "Data updated successfully.";
                LoadRecord();


                txt_address.Text = "";
                txt_Phone.Text = "";
                txt_date.Text = "";
                txt_details.Text = "";
                txt_budget.Text = "";
                txt_guestCount.Text = "";

            }
            catch (Exception ex)
            {
                // Handle exceptions
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('Error: {ex.Message}');", true);
            }
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("select * from Events", Conn);
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            d.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow row = ds.Tables[0].Rows[0];
                //lblAddress.Text = "Address: " + row["Address"].ToString();
                //lblPhoneNumber.Text = "Phone Number: " + row["PhoneNumber"].ToString();
                //lblEventDate.Text = "Event Date: " + row["EventDate"].ToString();
                //lblDetails.Text = "Details: " + row["Details"].ToString();
                //lblEstimatedBudget.Text = "Estimated Budget: " + row["EstimatedBudget"].ToString();
                //lblEstimatedGuestCount.Text = "Estimated Guest Count: " + row["EstimatedGuestCount"].ToString();
            }
        }

        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            try
            {
                int eventID = int.Parse(txtSearch.Text);

                Conn.Open();
                SqlCommand comm = new SqlCommand("SELECT * FROM Events WHERE EventID = @EventID", Conn);
                comm.Parameters.AddWithValue("@EventID", eventID);
                SqlDataReader r = comm.ExecuteReader();

                if (r.Read())
                {
                    txt_address.Text = r["Address"].ToString();
                    txt_Phone.Text = r["PhoneNumber"].ToString();
                    txt_date.Text = r["EventDate"].ToString();
                    txt_details.Text = r["Details"].ToString();
                    txt_budget.Text = r["EstimatedBudget"].ToString();
                    txt_guestCount.Text = r["EstimatedGuestCount"].ToString();
                }
                else
                {
                    // If no record is found, clear the text fields
                    txt_address.Text = "";
                    txt_Phone.Text = "";
                    txt_date.Text = "";
                    txt_details.Text = "";
                    txt_budget.Text = "";
                    txt_guestCount.Text = "";


                    lblMessage.Text = "No record found for the given EventID.";
                    lblMessage.Visible = true;
                }

                Conn.Close();
            }
            catch (Exception ex)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('Error: {ex.Message}');", true);
            }
        }

        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
    }
}