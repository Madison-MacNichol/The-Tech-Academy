<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EpicSpiesAssetTrackerChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 130px;
			height: 151px;
		}
		.auto-style2 {
			font-family: Arial, Helvetica, sans-serif;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<img alt="" class="auto-style1" src="epic-spies-logo.jpg" />
			<h2 class="auto-style2">Asset Performance Tracker</h2>
			<p class="auto-style2">
				Asset Name:
				<asp:TextBox ID="assetTextBox" runat="server"></asp:TextBox>
			</p>
			<p class="auto-style2">
				Elections Rigged:
				<asp:TextBox ID="electionsTextBox" runat="server"></asp:TextBox>
			</p>
			<p class="auto-style2">
				Acts of Subterfuge Performed:
				<asp:TextBox ID="actsTextBox" runat="server"></asp:TextBox>
			</p>
			<p class="auto-style2">
				<asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Add Asset" />
			</p>
			<p class="auto-style2">
				<asp:Label ID="addLabel" runat="server"></asp:Label>
			</p>
			<p class="auto-style2">
				<asp:Label ID="resultLabel" runat="server" Text=" "></asp:Label>
			</p>
        </div>
    </form>
</body>
</html>
