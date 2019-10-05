<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="2_weekly_calendar.aspx.cs" Inherits="N00831998_Bonus_Assignment.images._2_weekly_calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bonus Assignment Question 2</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bonus Assignment Question 2 - Weekly Calendar</h1>
            <h2>Sam Bebenek - N00831998</h2>
            <div>
                <label for="schedule_checkbox">Please select which days you work:</label>
            </div>
            <asp:CheckBoxList runat="server" name="schedule_checkbox" ID="schedule_checkbox">
                <asp:ListItem Value="monday">Monday</asp:ListItem>
                <asp:ListItem Value="tuesday">Tuesday</asp:ListItem>
                <asp:ListItem Value="wednesday">Wednesday</asp:ListItem>
                <asp:ListItem Value="thursday">Thursday</asp:ListItem>
                <asp:ListItem Value="friday">Friday</asp:ListItem>
                <asp:ListItem Value="saturday">Saturday</asp:ListItem>
                <asp:ListItem Value="sunday">Sunday</asp:ListItem>
            </asp:CheckBoxList>
            <asp:Button Text="Submit" runat="server" />
            <br />
            <div id="submit_return" runat="server"></div>
        </div>
    </form>
</body>
</html>
