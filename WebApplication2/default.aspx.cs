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
            if (Session["user"] == null)
            {
                Response.Redirect("~/Login.aspx", true);
            }
            else
            {
                if (!IsPostBack)
                {
                    QMRServiceReference.qmrserviceSoapClient client = new QMRServiceReference.qmrserviceSoapClient();

                    gvtwo.DataSource = client.GetListRooms();
                    gvtwo.DataBind();
                }
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

                    QMRServiceReference.qmrserviceSoapClient client = new QMRServiceReference.qmrserviceSoapClient();

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