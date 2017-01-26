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


            // I need to retrieve the values from the front-end (Login.aspx) Login page

            // 1) Check if values are empty
            // 2) If they are not empty, pass the login values to the "Login" method. 


           
        }
    }
}