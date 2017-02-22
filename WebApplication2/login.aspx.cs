using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class Login1 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
        
         } 
        protected void loginbutton_Click(object sender, EventArgs e)
        {
            QMRServiceReference.RoomsClient client = new QMRServiceReference.RoomsClient();
            client.ClientCredentials.UserName.UserName = "ITIT";
            client.ClientCredentials.UserName.Password = "ITIT2017";

           String loginSuccess = client.Login(txtUsername.Text, txtPassword.Text);
           if (loginSuccess == "Success")
            {
                Session.Add("user", txtUsername.Text);
                Response.Redirect("~/default.aspx", true);
                
            }

        }
    }
}