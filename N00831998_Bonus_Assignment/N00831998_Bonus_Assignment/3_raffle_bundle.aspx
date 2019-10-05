<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="3_raffle_bundle.aspx.cs" Inherits="N00831998_Bonus_Assignment.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bonus Assignment Question 3</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bonus Assignment Question 3 - Raffle Bundle</h1>
            <h2>Sam Bebenek - N00831998</h2>
            <div>
                <label for="ticket_number">Please enter the number of tickets you would like to purchase ($0.25cad each):</label>
            </div>
            <asp:TextBox runat="server" ID="ticket_number"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ControlToValidate="ticket_number" ErrorMessage="Required Field" ForeColor="Red" Text="*"></asp:RequiredFieldValidator>
            <asp:CompareValidator runat="server" EnableClientScript="true" ControlToValidate="ticket_number" ErrorMessage="Must be 1 or more tickets." Text="*" ForeColor="Red" Type="Integer" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
        </div>
        <asp:Button runat="server" text="Submit" />
        <asp:ValidationSummary runat="server" ID="validation_summary" ForeColor="Red" />
        <br />
        <div id="submit_return" runat="server"></div>
    </form>
</body>
</html>
