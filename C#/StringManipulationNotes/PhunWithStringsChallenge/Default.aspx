<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PhunWithStringsChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:TextBox ID="valueTextBox" runat="server"></asp:TextBox>
		<br />
		<br />
		<asp:Button ID="okButton" runat="server" OnClick="okButton_Click" style="height: 26px" Text="OK" />
		<br />
		<br />
		<asp:Label ID="resultLabel" runat="server"></asp:Label>
    </form>
</body>
</html>
