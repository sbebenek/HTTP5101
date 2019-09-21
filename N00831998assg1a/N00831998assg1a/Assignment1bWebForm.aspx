<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1bWebForm.aspx.cs" Inherits="N00831998assg1a.Assignment1bWebForm" %>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1bWebForm.aspx.cs" Inherits="N00831998assg1a.Assignment1bWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--SAM BEBENEK N00831998-->
    <!--Assignment 1b - September 24 2019-->
    <!--This assignment emulates a hotel booking form with validation that asks for:
        first name, last name, email address, phone number, the start date of the booking, the room type, and the number of nights being booked.-->
    <title>ASP.NET Web Form<</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HTTP 5101 Assignment 1b ASP.NET Web Form with Validation</h1>
            <h3>Sam Bebenek N00831998</h3>

            <h2>Hotel Booking Form</h2>
            <div>
                <label for="hotel_booking_fname">First Name:</label>
                <asp:TextBox runat="server" ID="hotel_booking_fname" name="hotel_booking_fname" placeholder="e.g. John"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your first name" ControlToValidate="hotel_booking_fname"></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="hotel_booking_lname">Last Name:</label>
                <asp:TextBox runat="server" ID="hotel_booking_lname" name="hotel_booking_lname" placeholder="e.g. Smith"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your last name" ControlToValidate="hotel_booking_lname"></asp:RequiredFieldValidator>

            </div>
            <div>
                <label for="hotel_booking_email">Email Address:</label>
                <asp:TextBox runat="server" ID="hotel_booking_email" name="hotel_booking_email" placeholder="e.g. address@email.com"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your email address" ControlToValidate="hotel_booking_email"></asp:RequiredFieldValidator>
                <!--Regex for code line below copied from https://emailregex.com/ - September 21st 2019 - no author given - reason: it had a working email validation regex for .NET-->
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="hotel_booking_email" ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" ErrorMessage="Please enter a valid email address"></asp:RegularExpressionValidator>

            </div>
            <div>
                <label for="hotel_booking_phone">Phone Number:</label>
                <asp:TextBox runat="server" ID="hotel_booking_phone" name="hotel_booking_phone" placeholder="e.g. (555) 555-5555"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter your phone number" ControlToValidate="hotel_booking_phone"></asp:RequiredFieldValidator>
                <!--Regex for code line below copied from HTTP_5101_Fall2019 class example code - September 21st 2019-->
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="hotel_booking_phone" ValidationExpression="[(]{0,1}[0-9]{3}[)]{0,1}(\s*|\-+)[0-9]{3}(\s*|\-+)[0-9]{4}" ErrorMessage="Please enter a valid phone number (eg. (555)-555-5555)"></asp:RegularExpressionValidator>
            </div>
            <div>
                <label for="hotel_booking_date">Date you wish to begin staying with us:</label>
                <asp:TextBox runat="server" ID="hotel_booking_date" name="hotel_booking_date" placeholder="MM-DD-YY"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter the date you wish to begin staying with us" ControlToValidate="hotel_booking_date"></asp:RequiredFieldValidator>
                <!--Regex for code below generated myself with the help of https://www.regextester.com/96222 - September 21st 2019-->
                <asp:RegularExpressionValidator runat="server" EnableClientScript="true" ControlToValidate="hotel_booking_date" ValidationExpression="^((0|1)\d{1})-((0|1|2|3)\d{1})-(\d{2})" ErrorMessage="Please enter a date in the correct format (MM-DD-YY)"></asp:RegularExpressionValidator>
            </div>
            <div>
                <label for="hotel_room_type">Select Room Type (Pricing is per night):</label>
                <asp:DropDownList runat="server" ID="hotel_room_type" name="hotel_room_type">
                    <asp:ListItem Text="-Select One-" Value=""></asp:ListItem>
                    <asp:ListItem Text="Single - $100" Value="room_type_single"></asp:ListItem>
                    <asp:ListItem Text="Double - $150" Value="room_type_double"></asp:ListItem>
                    <asp:ListItem Text="Triple - $200" Value="room_type_triple"></asp:ListItem>
                    <asp:ListItem Text="Quad - $250" Value="room_type_quad"></asp:ListItem>
                    <asp:ListItem Text="Suite - $300" Value="room_type_suite"></asp:ListItem>
                    <asp:ListItem Text="Master Suite - $350" Value="room_type_master"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter a hotel room type" ControlToValidate="hotel_room_type"></asp:RequiredFieldValidator>

            </div>
            <div>
                <label for="hotel_days_booked">Number of Nights Being Booked (Max. 7):</label>
                <asp:TextBox runat="server" ID="hotel_days_booked" name="hotel_days_booked"></asp:TextBox>
                <asp:RangeValidator runat="server" EnableClientScript="true" ControlToValidate="hotel_days_booked" ErrorMessage="Please enter a number of nigths between 1 and 8." MinimumValue="1" MaximumValue="7"></asp:RangeValidator>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Please enter the number of nights being booked" ControlToValidate="hotel_days_booked"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!--Validation Summary-->
                <asp:ValidationSummary runat="server" ShowSummary="true" />
            </div>
            <div id="submit_confirm" runat="server">
            </div>
            <div>
                <asp:Button Text="Submit" runat="server" />
            </div>


        </div>
    </form>
</body>
</html>

