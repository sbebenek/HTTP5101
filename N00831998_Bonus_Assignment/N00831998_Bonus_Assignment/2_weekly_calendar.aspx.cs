using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N00831998_Bonus_Assignment.images
{
    public partial class _2_weekly_calendar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if submit button was clicked
            if (Page.IsPostBack)
            {
                //re-validate page
                Page.Validate();

                //if the page is valid
                if (Page.IsValid)
                {

                    //initialize array containing the days of the week (OCTOBER 1st 2019 is a tuesday so I started with tuesday)
                    string[] weekdays = new string[] { "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "Monday" };
                    List<string> selectedDays = new List<string>();

                    submit_return.InnerHtml = "";

                    for (int i = 0; i < schedule_checkbox.Items.Count; i++)
                    {
                        //add all the selected days to my own list to easily reference
                        if (schedule_checkbox.Items[i].Selected)
                        {
                            selectedDays.Add(schedule_checkbox.Items[i].ToString());
                        }

                    }

                    // for each element in schedule_checkbox, print "today is whatever" ... if it is selected, print "you work", else print "you don't work"
                    //iterate from days 1 -31
                    for (int i = 1; i < 32; i++)
                    {
                        submit_return.InnerHtml += "On " + weekdays[(i - 1) % 7] + " October " + i + ordinal(i) + ", ";
                        if (selectedDays.Contains(weekdays[(i - 1) % 7]))
                        {
                            submit_return.InnerHtml += "you work.<br>";
                        }
                        else
                        {
                            submit_return.InnerHtml += "you have the day off.<br>";
                        }

                    }
                }
            }
        }
        //added my own function to add ordinals to the date number (ie. the 'st' at the end of '1st') as a subscript in unicode.
        //returns an empty string if input is 0 or negative.
        public static string ordinal(int n)
        {
            if (n <= 0)
            {
                return "";
            }
            switch (n % 100)
            {
                case 11:
                case 12:
                case 13:
                    //unicode for "th" superscript
                    return "&#x1D57;&#x02B0;";
            }
            switch (n % 10)
            {
                case 1:
                    //unicode for "st"
                    return "&#x02E2;&#x1D57;";
                case 2:
                    //unicode for 'nd'
                    return "&#x207F;&#x1D48;";
                case 3:
                    //unicode for 'rd'
                    return "&#x02B3;&#x1D48;";
                default:
                    //unicode for "th" superscript
                    return "&#x1D57;&#x02B0;";
            }

        }
    }
}