<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="myfistwebapp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
		<p>
			what is your first name?&nbsp;
			<asp:TextBox ID="firstnameTextbox" runat="server"></asp:TextBox>
		</p>
		<p>
			&nbsp;</p>
		<p>
			what is your last name?&nbsp; <asp:TextBox ID="lastnameTextbox" runat="server"></asp:TextBox>
		</p>
		<p>
			&nbsp;</p>
		<p>
			<asp:Button ID="okButton" runat="server" OnClick="okButton_Click" Text="Click Me" />
		</p>
		<p>
			&nbsp;</p>
		<p>
			<asp:Label ID="resultLabel" runat="server"></asp:Label>
		</p>
	</form>
</body>
</html>
