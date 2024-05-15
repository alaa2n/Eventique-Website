using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class Event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void btn_book1_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "45K EGP";
            Session["eventtype1"] = "Wedding";
            Session["eventtype2"] = "Engagement";
            Session["package"] = "Elegance";

            Response.Redirect("~/pack.aspx");
        }

        protected void btn_book2_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "65K EGP";
            Session["eventtype1"] = "Wedding";
            Session["eventtype2"] = "Engagement";
            Session["package"] = "Enchanted";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book3_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "80K EGP";
            Session["eventtype1"] = "Wedding";
            Session["eventtype2"] = "Engagement";
            Session["package"] = "Celestial";
            Response.Redirect("~/pack.aspx");

        }


        protected void btn_book5_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "90K EGP";
            Session["eventtype1"] = "Wedding";
            Session["eventtype2"] = "Engagement";
            Session["package"] = "Love Birds";

            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book6_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "100K EGP";
            Session["eventtype1"] = "Wedding";
            Session["eventtype2"] = "Engagement";
            Session["package"] = "Bridal Bliss";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book7_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "150K EGP";
            Session["eventtype1"] = "Wedding";
            Session["eventtype2"] = "Engagement";
            Session["package"] = "Grand Gala";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book9_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "5.5K EGP";
            Session["eventtype1"] = "Birthday";
            Session["eventtype2"] = "Anniversary";
            Session["package"] = "Joy Bash";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book10_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "10K EGP";
            Session["eventtype1"] = "Birthday";
            Session["eventtype2"] = "Anniversary";
            Session["package"] = "Bliss-Fete";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book11_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "15K EGP";
            Session["eventtype1"] = "Birthday";
            Session["eventtype2"] = "Anniversary";
            Session["package"] = "Cheer Chic";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book13_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "18K EGP";
            Session["eventtype1"] = "Birthday";
            Session["eventtype2"] = "Anniversary";
            Session["package"] = "Happy-Hoopla";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book14_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "23K EGP";
            Session["eventtype1"] = "Birthday";
            Session["eventtype2"] = "Anniversary";
            Session["package"] = "Fun Fiesta";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book15_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "30K EGP";
            Session["eventtype1"] = "Birthday";
            Session["eventtype2"] = "Anniversary";
            Session["package"] = "Gala Glee";
    
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book17_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "3.5K EGP";
            Session["eventtype1"] = "Formal";
            Session["eventtype2"] = "Business";
            Session["package"] = "Black-Tie Bliss";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book18_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "6.5K EGP";
            Session["eventtype1"] = "Formal";
            Session["eventtype2"] = "Business";

            Session["package"] = "Prestige";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book19_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "8K EGP";
            Session["eventtype1"] = "Formal";
            Session["eventtype2"] = "Business";

            Session["package"] = "Opulence";

            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book21_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "12K EGP";
            Session["eventtype1"] = "Formal";
            Session["eventtype2"] = "Business";

            Session["package"] = "Grandeur";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book22_Click(object sender, EventArgs e)
        {

            Session["EventPrice"] = "15K EGP";
            Session["eventtype1"] = "Formal";
            Session["eventtype2"] = "Business";

            Session["package"] = "Luxe";
            Response.Redirect("~/pack.aspx");

        }

        protected void btn_book23_Click(object sender, EventArgs e)
        {
            Session["EventPrice"] = "150K EGP";
            Session["eventtype1"] = "Formal";
            Session["eventtype2"] = "Business";

            Session["package"] = "Elite";
            Response.Redirect("~/pack.aspx");

        }
    }
}