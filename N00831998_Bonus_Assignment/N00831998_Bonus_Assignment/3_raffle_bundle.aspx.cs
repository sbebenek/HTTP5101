using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N00831998_Bonus_Assignment
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack)
            {
                Page.Validate();
                if (Page.IsValid)
                {
                    int ticketNumber = Convert.ToInt32(ticket_number.Text);
                    submit_return.InnerHtml = "";
                    int ticketCounter = 0;
                    //how many tickets are in a ticket bundle (1 by default)
                    int bundleModulo = 1;
                    //holds how many tickets are leftover after tickets are divided into bundles
                    int leftoverTickets = 0;
                    double ticketCost = 0.25;
                    double totalTicketCost;

                    //ticket bundles of 1
                    if (ticketNumber <= 50)
                    {
                        while (ticketCounter < ticketNumber)
                        {
                            ticketCounter++;
                            submit_return.InnerHtml += "You've received a bundle of 1! That's " + ticketCounter + " ticket(s)!<br>";
                        }
                    }
                    //ticket bundles of 2
                    else if (ticketNumber >= 51 && ticketNumber <= 150)
                    {
                        bundleModulo = 2;
                        leftoverTickets = ticketNumber % bundleModulo;
                        for (int i = 1; i < ticketNumber - leftoverTickets; i += 2)
                        {
                            ticketCounter += 2;
                            submit_return.InnerHtml += "You've received a bundle of 2! That's " + ticketCounter + " ticket(s)!<br>";
                        }
                    }
                    //ticket bundles of 3
                    else if (ticketNumber >= 151 && ticketNumber <= 300)
                    {
                        bundleModulo = 3;
                        leftoverTickets = ticketNumber % bundleModulo;
                        for (int i = 1; i < ticketNumber - leftoverTickets; i += 3)
                        {
                            ticketCounter += 3;
                            submit_return.InnerHtml += "You've received a bundle of 3! That's " + ticketCounter + " ticket(s)!<br>";
                        }
                    }
                    //ticket bundles of 5
                    else
                    {
                        bundleModulo = 5;
                        leftoverTickets = ticketNumber % bundleModulo;
                        for (int i = 1; i < ticketNumber - leftoverTickets; i += 5)
                        {
                            ticketCounter += 5;
                            submit_return.InnerHtml += "You've received a bundle of 5! That's " + ticketCounter + " ticket(s)!<br>";
                        }
                    }

                    //if there are leftover tickets, add them outside of a bundle
                    if (leftoverTickets != 0)
                    {
                        ticketCounter += leftoverTickets;
                        submit_return.InnerHtml += "Your leftover ticket(s) is " + leftoverTickets + ". That's " + ticketCounter + " ticket(s)!<br>";
                    }
                    totalTicketCost = ticketNumber * ticketCost;
                    //String.Format("{0:C2}"...) converts it to a string with a money format (ie. 0.5 -> $0.50)
                    submit_return.InnerHtml += "Your total ticket(s) is " + ticketNumber + ". Your total is: " + String.Format("{0:C2}", totalTicketCost) + "cad.";
                }
            }
        }
    }
}