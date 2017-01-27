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

            QMRServiceReference.RoomsClient client = new QMRServiceReference.RoomsClient();
            client.ClientCredentials.UserName.UserName = "ITIT";
            client.ClientCredentials.UserName.Password = "ITIT2017";

            gvtwo.DataSource = client.GetListRooms();
            gvtwo.DataBind();

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
        

        protected void gvtwo_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void gvtwo_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // Write the Properties for the button inside of the GridView

            
        }

    }
}