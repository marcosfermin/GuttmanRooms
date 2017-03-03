using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class _default : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {   
            // If there is no initialized session, the user will be redirected to the Login Page. 
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx", true);
            }
            else
            {
                if (!IsPostBack)
                {
                    // Call to the Web Service
                    QMRServiceReference.qmrserviceSoapClient client = new QMRServiceReference.qmrserviceSoapClient();

                    // Data binding to the GridView
                    gvtwo.DataSource = client.GetListRooms();
                    gvtwo.DataBind();
                }
            }
        }


      // Functionality to Set Room Reservation

        protected void gvtwo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // The command name "Reserve" is activated when the reserve button is selected. 
            switch (((Button)e.CommandSource).CommandName)
            {

                case "Reserve":
                   
                    String s = e.CommandArgument.ToString();
                    int RoomID;
                    int.TryParse(s, out RoomID);

                    // Call to the Web Service
                    QMRServiceReference.qmrserviceSoapClient client = new QMRServiceReference.qmrserviceSoapClient();

                    /* Functionality to reserve room. The function "ReserveRoom" will be true in the desired room, if available.
                    (Meaning user will be able to reserve it) */

                    client.ReserveRoom(RoomID, true);
                    
                    // Data binding to the GridView
                    gvtwo.DataSource = client.GetListRooms();
                    gvtwo.DataBind();
                 
                    break;

                default:
              
                    break;

            }

        }
    }
}