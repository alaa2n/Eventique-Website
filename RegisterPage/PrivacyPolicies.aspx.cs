using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegisterPage
{
    public partial class PrivacyPolicies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void agree_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");

        }
    }
}