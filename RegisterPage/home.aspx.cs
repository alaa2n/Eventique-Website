using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnJoinUs_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:56397/SignIn.aspx"); // Example redirect

        }
    }
}