﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment1bWebForm.aspx.cs" Inherits="N00831998assg1a.Assignment1bWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!--SAM BEBENEK N00831998-->
    <!--Assignment 1b - September 24 2019-->
    <title>ASP.NET Web Form<</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>HTTP 5101 Assignment 1b ASP.NET Web Form with Validation</h1>
            <h3>Sam Bebenek N00831998</h3>

            <h2>Student Resort Inquiry Form</h2>
            <div>
                <label for="student_number">Student Number:</label>
                <asp:TextBox runat="server" ID="student_number" name="student_number" placeholder="e.g. N12345678"></asp:TextBox>
            </div>
            <div>
                <label for="service_event">Select Service/Event:</label>
                <asp:DropDownList runat="server" ID="service_event" name="service_event">
                    <asp:ListItem Text="Hotel" Value="hotel"></asp:ListItem>
                    <asp:ListItem Text="Bus Tour" Value="bus_tour"></asp:ListItem>
                    <asp:ListItem Text="Skiing" Value="skiing"></asp:ListItem>
                    <asp:ListItem Text="Skydiving" Value="skydiving"></asp:ListItem>
                    <asp:ListItem Text="Pet Grooming" Value="pet_grooming"></asp:ListItem>
                    <asp:ListItem Text="Sports Car Rental" Value="sports_car_rental"></asp:ListItem>
                    <asp:ListItem Text="Scuba Diving" Value="scuba_diving"></asp:ListItem>
                    <asp:ListItem Text="Go Kart" Value="go_cart"></asp:ListItem>
                    <asp:ListItem Text="Rock Climbing" Value="rock_climbing"></asp:ListItem>
                    <asp:ListItem Text="Rock Concert" Value="rock_concert"></asp:ListItem>
                </asp:DropDownList>
            </div>

            <div>
                <label>Select Inquiry Type:</label>
                <asp:RadioButtonList runat="server" ID="inquiry_type">
                    <asp:ListItem Text="Booking" Value="booking"></asp:ListItem>
                    <asp:ListItem Text="Review" Value="review"></asp:ListItem>
                    <asp:ListItem Text="Incident Report" Value="incident_review"></asp:ListItem>
                </asp:RadioButtonList>


                <div>
                    <label for="form_message">Enter Inquiry Message:</label>
                </div>
                <div>
                    <asp:TextBox ID="form_message" name="inquiry_message" TextMode="multiline" Columns="50" Rows="5" runat="server" />
                </div>

                <label>Additional: Which resort coding seminars do you plan on attending?</label>

                <asp:CheckBoxList ID="attending_seminar" name="attending_seminar" runat="server">
                    <asp:ListItem Text="Java" Value="java"></asp:ListItem>
                    <asp:ListItem Text="C#" Value="cs"></asp:ListItem>
                    <asp:ListItem Text="HTML" Value="html"></asp:ListItem>
                    <asp:ListItem Text="C++" Value="cpp"></asp:ListItem>
                    <asp:ListItem Text="Python" Value="python"></asp:ListItem>
                </asp:CheckBoxList>
                <div>
                    <asp:Button Text="Submit" runat="server" />
                </div>
            </div>

        </div>
    </form>
</body>
</html>

