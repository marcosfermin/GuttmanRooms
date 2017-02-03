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

        //=====================================================
        //<EN>
        // This section can be found at: 
        // https://msdn.microsoft.com/en-us/library/system.web.ui.webcontrols.datagrid.itemcommand(v=vs.110).aspx
        //======================================================

        protected void ItemsGrid_Command(Object sender, DataGridCommandEventArgs e)
        {

            switch (((LinkButton)e.CommandSource).CommandName)
            {

                case "Delete":
                    DeleteItem(e);  //This DeleteItem still does not exist. 
                    break;

                // Add other cases here, if there are multiple ButtonColumns in 
                // the DataGrid control.

                default:
                    // Do nothing.
                    break;

            }

        }

     //---------------------------------------------------------
     //</EN> End of Section...
    //----------------------------------------------------------
    }
}