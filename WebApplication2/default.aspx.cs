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

            //Room r1 = new Room(1);
            //Room r2 = new Room(2);
            //Room r3 = new Room(3);


            //List<string> l = new List<string>();

            //l.Add("1");
            //l.Add("Room 2016");


            //gvone.DataSource = l;
            //gvone.DataBind();

            List<Room>  = new List<Room>();

            Room.Add(new Room(1));
            Room.Add(new Room(2));

            gvone.DataSource = Room;
            gvone.DataBind();
        }
    }    
     

            
    
}