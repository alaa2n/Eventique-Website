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
    public partial class UpdatePackages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection Conn = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");
        protected void btnSearch_Click1(object sender, EventArgs e)
        {
            try
            {
                int packageID = int.Parse(txtSearch.Text);

                Conn.Open();
                SqlCommand comm = new SqlCommand("SELECT * FROM Packages WHERE PackageId = @PackageId", Conn);
                comm.Parameters.AddWithValue("@PackageId", packageID);
                SqlDataReader r = comm.ExecuteReader();

                if (r.Read())
                {
                    txt_address.Text = r["Address"].ToString();
                    txt_phoneNum.Text = r["PhoneNumber"].ToString();
                    txt_date.Text = r["EventDate"].ToString();
                    txt_email.Text = r["Email"].ToString();
                }
                else
                {
                    // If no record is found, clear the text fields
                    txt_address.Text = "";
                    txt_phoneNum.Text = "";
                    txt_date.Text = "";
                    txt_email.Text = "";



                    lblErrorMessage.Text = "No record found for the given EventID.";
                    lblErrorMessage.Visible = true;
                }

                Conn.Close();
            }
            catch (Exception ex)
            {

                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('Error: {ex.Message}');", true);
            }
        }

        protected void btn_updatePack_Click1(object sender, EventArgs e)
        {

            try
            {
                Conn.Open();
                SqlCommand command = new SqlCommand("UPDATE Packages SET Address = @Address, PhoneNumber = @PhoneNumber, EventDate = @EventDate, Email = @Email WHERE PackageId = @PackageId", Conn);
                command.Parameters.AddWithValue("@Address", txt_address.Text);
                command.Parameters.AddWithValue("@PhoneNumber", txt_phoneNum.Text);
                command.Parameters.AddWithValue("@EventDate", txt_date.Text);
                command.Parameters.AddWithValue("@Email", txt_email.Text);
                command.Parameters.AddWithValue("@PackageId", int.Parse(txtSearch.Text));
                command.ExecuteNonQuery();
                Conn.Close();
                lblSuccessMessage.Text = "Data updated successfully.";
                LoadRecord();


                txt_address.Text = "";
                txt_phoneNum.Text = "";
                txt_date.Text = "";
                txt_email.Text = "";


            }
            catch (Exception ex)
            {
                // Handle exceptions
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", $"alert('Error: {ex.Message}');", true);
            }
        }
        void LoadRecord()
        {
            SqlCommand comm = new SqlCommand("SELECT * FROM Packages WHERE PackageId = @PackageId", Conn);
            comm.Parameters.AddWithValue("@PackageId", int.Parse(txtSearch.Text));
            SqlDataAdapter d = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            d.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                DataRow row = ds.Tables[0].Rows[0];
                lblAddress.Text = "Address: " + row["Address"].ToString();
                lblPhoneNumber.Text = "Phone Number: " + row["PhoneNumber"].ToString();
                lblEventDate.Text = "Event Date: " + row["EventDate"].ToString();
                lblEmail.Text = "Email: " + row["Email"].ToString();
            }
            else
            {
                // Clear labels if no record found
                lblAddress.Text = "";
                lblPhoneNumber.Text = "";
                lblEventDate.Text = "";
                lblEmail.Text = "";
            }



        }

        
        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("~/SignIn.aspx");
        }
    }
}