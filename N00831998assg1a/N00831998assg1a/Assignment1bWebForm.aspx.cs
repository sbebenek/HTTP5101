using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N00831998assg1a
{
    public partial class Assignment1bWebForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //if page is loaded after submit button is clicked
            if (Page.IsPostBack)
            {
                //re-validate the code
                Page.Validate();

                if (Page.IsValid)
                {

                    string guestFName = hotel_booking_fname.Text.ToString();
                    string guestLName = hotel_booking_lname.Text.ToString();
                    string guestEmail = hotel_booking_email.Text.ToString();
                    string guestPhoneNumber = hotel_booking_phone.Text.ToString();
                    string guestBookingDate = hotel_booking_date.Text.ToString();
                    string guestRoomType = hotel_room_type.SelectedValue.ToString();
                    int guestDaysBooked = Convert.ToInt32(hotel_days_booked.Text);
                    string roomTypeString = "";
                    int totalCost; 

                    //Single room type selected -- $100
                    if (guestRoomType == "room_type_single")
                    {
                        roomTypeString = "Single";
                        totalCost = guestDaysBooked * 100;
                    }
                    //Double room type selected -- $150
                    else if (guestRoomType == "room_type_double")
                    {
                        roomTypeString = "Double";
                        totalCost = guestDaysBooked * 150;
                    }
                    //Triple room type selected -- $200
                    else if (guestRoomType == "room_type_triple")
                    {
                        roomTypeString = "Triple";
                        totalCost = guestDaysBooked * 200;
                    } 
                    //Quad room type selected -- $250
                    else if (guestRoomType == "room_type_quad")
                    {
                        roomTypeString = "Quad";
                        totalCost = guestDaysBooked * 250;
                    } 
                    //Suite room type selected -- $300
                    else if (guestRoomType == "room_type_suite")
                    {
                        roomTypeString = "Suite";
                        totalCost = guestDaysBooked * 300;
                    }
                    //Master Suite room type selected -- $350
                    else
                    {
                        roomTypeString = "Master Suite";
                        totalCost = guestDaysBooked * 350;
                    }


                    //post confirmation message to the client-side web page
                    submit_confirm.InnerHtml = "<br>Thank you for booking with us. Your booking summary: <br>";
                    submit_confirm.InnerHtml += " Name: " + guestFName + " " + guestLName + "<br>";
                    submit_confirm.InnerHtml += "Email Address: " + guestEmail + "<br>";
                    submit_confirm.InnerHtml += "Phone Number: " + guestPhoneNumber + "<br>";
                    submit_confirm.InnerHtml += "Date you will begin staying with us: " + guestBookingDate + "<br>";
                    submit_confirm.InnerHtml += "Room Type: " + roomTypeString + "<br>";
                    submit_confirm.InnerHtml += "Number of nights staying with us: " + guestDaysBooked.ToString() + "<br>";
                    submit_confirm.InnerHtml += "Total cost: $" + totalCost.ToString() + "<br>";
                }
            }
        }
    }
}