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
            // Call to the Web Service
            QMRServiceReference.qmrserviceSoapClient client = new QMRServiceReference.qmrserviceSoapClient();

            // Obtain credentials from TextBoxes (txtUsername.Text and txtPassword.Text) from Default Page. 
            string loginSuccess = client.Login(txtUsername.Text, txtPassword.Text);
            
            // If Authentication is successful, user will be redirected to the Default Page.
            if (loginSuccess == "Success")
            {
                Session.Add("user", txtUsername.Text);
                Response.Redirect("~/default.aspx", true);
            }
        }

        // Validation of the Active Directory: 

        protected void ADValidator_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // Call to the Web Service
            QMRServiceReference.qmrserviceSoapClient client = new QMRServiceReference.qmrserviceSoapClient();

            // Obtain credentials from TextBoxes (txtUsername.Text and txtPassword.Text) from Default Page (default.aspx). 
            string loginSuccess = client.Login(txtUsername.Text, txtPassword.Text);

            // Validation based on username
            // If the Authentication is successful and the validation arguments are true, user will be redirected to the Default Page (default.aspx) 
            if (loginSuccess == "Success")
            {
                args.IsValid = true;
                Session.Add("user", txtUsername.Text);
                Response.Redirect("~/default.aspx", true);
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}