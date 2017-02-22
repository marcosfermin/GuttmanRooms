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
            if (Session.IsNewSession)
            {
                Response.Redirect("~/Login.aspx", true);
            }

            if (!IsPostBack)
            {
                QMRServiceReference.RoomsClient client = new QMRServiceReference.RoomsClient();
                client.ClientCredentials.UserName.UserName = "ITIT";
                client.ClientCredentials.UserName.Password = "ITIT2017";



                gvtwo.DataSource = client.GetListRooms();
                gvtwo.DataBind();
            }
            

        }


      //Functionality to Set Room Reservation

        protected void gvtwo_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            switch (((Button)e.CommandSource).CommandName)
            {

                case "Reserve":
                   
                    String s = e.CommandArgument.ToString();
                    int RoomID;
                    int.TryParse(s, out RoomID);

                    QMRServiceReference.RoomsClient client = new QMRServiceReference.RoomsClient();
                    client.ClientCredentials.UserName.UserName = "ITIT";
                    client.ClientCredentials.UserName.Password = "ITIT2017";

                    client.ReserveRoom(RoomID, true);
                    

                    gvtwo.DataSource = client.GetListRooms();
                    gvtwo.DataBind();
                  

                    Label1.Text = RoomID.ToString();
                    break;

                default:
              
                    break;

            }

        }
    }
}