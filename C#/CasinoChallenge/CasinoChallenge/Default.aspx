<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CasinoChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<asp:Image ID="Image1" runat="server" Height="150px" Width="150px" />
			<asp:Image ID="Image2" runat="server" Height="150px" Width="150px" />
			<asp:Image ID="Image3" runat="server" Height="150px" Width="150px" />
			<br />
			<br />
			Your Bet:
			<asp:TextBox ID="betTextBox" runat="server"></asp:TextBox>
			<br />
			<br />
			<asp:Button ID="pullButton" runat="server" OnClick="pullButton_Click" Text="Pull the Lever" />
			<br />
			<br />
			<asp:Label ID="resultLabel" runat="server"></asp:Label>
			<br />
			<br />
			<asp:Label ID="moneyLabel" runat="server"></asp:Label>
			<br />
			<br />
			<br />
			1 Cherry - 2x your bet<br />
			2 Cherries - 3x your bet<br />
			3 Cherries - 4x your bet<br />
			3 7&#39;s - JACKPOT! -100x your bet<br />
			1 Bar - you win nothing</div>
    </form>
</body>
</html>
