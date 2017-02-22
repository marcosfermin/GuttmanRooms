using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogoutLinkButton_Click(object sender, EventArgs e)
        {
            // Logout functionality for the default page
            //Session.Abandon();
            Session.Clear();
            Response.Redirect("~/Login.aspx", true);
            // End of Logout functionality for the default page
        }
    }
}