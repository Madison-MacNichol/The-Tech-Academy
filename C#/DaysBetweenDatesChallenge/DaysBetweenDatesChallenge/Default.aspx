<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DaysBetweenDatesChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	How Many Days Have Elapsed?
			<br />
			<br />
			Choose One Date:<br />
			<asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
			<br />
			<br />
			Choose a Second Date:<br />
			<asp:Calendar ID="Calendar2" runat="server"></asp:Calendar>
			<br />
			<br />
			<asp:Button ID="okButton" runat="server" OnClick="okButton_Click" Text="OK" />
			<br />
			<br />
			<asp:Label ID="resultLabel" runat="server"></asp:Label>
			<br />
			<br />
        </div>
    </form>
</body>
</html>
