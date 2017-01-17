using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication2
{
    public class Room
    {
        private int _roomID;
        private string _roomNumber;
        private int _roomCapacity;
        private int _status;
        private Boolean _occupied;

// In this section, we define the getchers for our project:

        //Get Room Number publicly:
        public string RoomNumber
        {
            get
            {
                return _roomNumber;
            }
        }

        //Get Room Capacity publicly:
        public int RoomCapacity
        {
            get
            {
                return _roomCapacity;
            }
        }

        //Get Room Status publicly:
        public int Status
        {
            get
            {
                return _status;
            }
        }

//Now, in this section we will define the constructor and the proper functions needed to return the proper functions.
 
        //Constructor:
        public Room (int RoomID)
        {
            _roomID = RoomID;
        }

        //Methods (Functions): 

            // Room reservation:
        public Boolean setReserved()
        {
            return true;
        }

            // Room Occupancy:
        public Boolean getOccupied()
        {
            return _occupied;
        }

            // Room Capacity:
        public int getRoomCapacity()
        {
            return _roomCapacity;
        }



    }
}