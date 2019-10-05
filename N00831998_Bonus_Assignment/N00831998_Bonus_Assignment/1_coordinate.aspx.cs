using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace N00831998_Bonus_Assignment
{
    public partial class _1_coordinate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if the page is a loaded after submit button is clicked
            if (Page.IsPostBack)
            {
                //re-validate code
                Page.Validate();
                //if the page is valid
                if (Page.IsValid)
                {
                    //xCoordinate variable name is changed from it's webform counterpart so that the .ToInt32() argument isn't referencing itself
                    int xCoordinate = Convert.ToInt32(x_coordinate.Text);
                    int yCoordinate = Convert.ToInt32(y_coordinate.Text);
                    int quadrantNumber;
                    submit_return.InnerHtml = "";

                    submit_return.InnerHtml += "The coordinate you entered is (" + xCoordinate + ", " + yCoordinate + ")<br>";

                    //xCoordinate is positive
                    if (xCoordinate > 0)
                    {
                        //yCoordinate is positive
                        if (yCoordinate > 0)
                        {
                            quadrantNumber = 1;
                        }
                        //yCoordinate is negative
                        else
                        {
                            quadrantNumber = 4;
                        }
                    }
                    //xCoordinate is negative
                    else
                    {
                        //yCoordinate is positive
                        if (yCoordinate > 0)
                        {
                            quadrantNumber = 2;
                        }
                        //yCoordinate is negative
                        else
                        {
                            quadrantNumber = 3;
                        }
                    }

                    submit_return.InnerHtml += "This coordinate is in quadrant " + quadrantNumber + "<br>";



                }
            }
        }
    }
}