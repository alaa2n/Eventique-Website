using Stripe;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Script.Serialization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
	public partial class Schedule1 : System.Web.UI.Page
	{
        SqlConnection connection = new SqlConnection(@"Data Source=ALAA\SQLEXPRESS;Initial Catalog=EventWeb;Integrated Security=True;");

        protected void Page_Load(object sender, EventArgs e)
        {

            // Open the connection
            connection.Open();

            // Query to retrieve user's full name and event date
            string query = "SELECT FullName, EventDate FROM Packages";

            using (SqlCommand command = new SqlCommand(query, connection))
            {
                // Execute the query
                SqlDataReader reader = command.ExecuteReader();

                // Loop through the results and populate the calendar
                while (reader.Read())
                {
                    string fullName = reader["FullName"].ToString();
                    DateTime eventDate = Convert.ToDateTime(reader["EventDate"]);

                    // Pass the data to the front-end
                    ClientScript.RegisterArrayDeclaration("userEvents",
                        "{ fullName: '" + fullName + "', eventDate: '" + eventDate.ToString("yyyy-MM-dd") + "' }");
                }

                // Close the reader
                reader.Close();
            }

            // Close the connection
            connection.Close();
        }
    }
      
    }

  

