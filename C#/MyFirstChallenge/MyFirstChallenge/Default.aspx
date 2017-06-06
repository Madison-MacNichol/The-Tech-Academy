<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyFirstChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
		<p>
			Hoe oud bent u??
			<asp:TextBox ID="leeftijdTextbox" runat="server"></asp:TextBox>
		</p>
		<p>
			&nbsp;</p>
		<p>
			Hoeveel geld zit er in u zakje vandaag?? <asp:TextBox ID="zakjeGeldTextbox" runat="server" OnTextChanged="zakjeGeld_TextChanged"></asp:TextBox>
		</p>
		<p>
			&nbsp;</p>
		<p>
			<asp:Button ID="fortuinKnop" runat="server" OnClick="fortuinKnop_Click" Text="U Fortuin" />
		</p>
		<p>
			<asp:Label ID="resultatLabel" runat="server"></asp:Label>
		</p>
	</form>
</body>
</html>
