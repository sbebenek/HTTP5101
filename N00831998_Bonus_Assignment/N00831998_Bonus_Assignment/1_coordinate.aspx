<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1_coordinate.aspx.cs" Inherits="N00831998_Bonus_Assignment._1_coordinate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bonus Asssignment Question 1</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Bonus Assignment Question 1 - Coordinate</h1>
            <h2>Sam Bebenek - N00831998</h2>
            <img src="images/quadrants.jpg" width="400px" />
            <div>
                <p>Please enter your coordinates:</p>
            </div>
            <div>
                <label for="x_coordinate">X:</label>
                <asp:TextBox runat="server" ID="x_coordinate" name="x_coordinate"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="x_coordinate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" ValueToCompare="0" ControlToValidate="x_coordinate" ErrorMessage="Please enter a non-zero integer" Operator="NotEqual" Type="Integer" Text="*" ForeColor="Red"></asp:CompareValidator>
            </div>
            <div>
                <label for="y_coordinate">Y:</label>
                <asp:TextBox runat="server" ID="y_coordinate" name="y_coordinate"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" EnableClientScript="true" ErrorMessage="Required Field" ControlToValidate="y_coordinate" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator runat="server" ValueToCompare="0" ControlToValidate="y_coordinate" ErrorMessage="Please enter a non-zero integer" Text="*" ForeColor="Red" Operator="NotEqual" Type="Integer"></asp:CompareValidator>
            </div>

            <br />
            <div>
                <asp:Button Text="Submit" runat="server" />
            </div>
            <asp:ValidationSummary runat="server" ID="validation_summary" ForeColor="Red" />
            <br />
            <div id="submit_return" runat="server">
            </div>


        </div>
    </form>
</body>
</html>
