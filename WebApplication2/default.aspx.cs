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
            if (!IsPostBack)
            {
                QMRServiceReference.RoomsClient client = new QMRServiceReference.RoomsClient();
                client.ClientCredentials.UserName.UserName = "ITIT";
                client.ClientCredentials.UserName.Password = "ITIT2017";



                gvtwo.DataSource = client.GetListRooms();
                gvtwo.DataBind();
            }
            //gvone.DataSource = client.GetListRooms();
            //gvone.DataBind();

            // var rms = client.GetListRooms();
            //        var rmbySensorID = client.GetRoomBySensorID(1);
            //        var rmbyRoomID = client.GetRoomByRoomID;

            // foreach (var room in rms)
            //{
            //    Label.Text = Label.Text + " " + room.RoomName;
            //    string name = room.RoomName;
            //    int roomid = room.RoomID;
            //    bool occupied = room.Occupied;
            //client.Close();

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

            //Functionality to UNSet Room Reservation

            switch (((Button)e.CommandSource).CommandName)
            {

                case "Unreserve": 
                    String s = e.CommandArgument.ToString();
                    int RoomID;
                    int.TryParse(s, out RoomID);

                    QMRServiceReference.RoomsClient client = new QMRServiceReference.RoomsClient();
                    client.ClientCredentials.UserName.UserName = "ITIT";
                    client.ClientCredentials.UserName.Password = "ITIT2017";

                    client.ReserveRoom(RoomID, false);

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