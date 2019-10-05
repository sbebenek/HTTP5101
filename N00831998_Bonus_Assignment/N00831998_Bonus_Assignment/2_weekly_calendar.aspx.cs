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
                    //go over each box in the checkboxlist and see if its selected then add to 'working' array, then in for loop check if that day is in the working array
                    /*OR:
                     * List<ListItem> selected = new List<ListItem>();
                        foreach (ListItem item in CBLGold.Items)
                         if (item.Selected) selected.Add(item);
                     
                     */
                    //initialize array containing the days of the week (OCTOBER 1st 2019 is a tuesday so I started with tuesday)
                    string[] weekdays = new string[] { "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "Monday" };

                    submit_return.InnerHtml = "";

                    //iterate from days 1 -31
                    for (int i = 1; i < 32; i++)
                    {

                    }
                }
            }
        }
    }
}