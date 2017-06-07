<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Simple_CalculatorChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			font-family: Arial, Helvetica, sans-serif;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<h1>Simple Calculator</h1>
			<p>
				<span class="auto-style1">First Value:</span>
				<asp:TextBox ID="firstTextBox" runat="server"></asp:TextBox>
			</p>
			<p>
				<span class="auto-style1">Second Value:</span>
				<asp:TextBox ID="secondTextBox" runat="server"></asp:TextBox>
			</p>
			<p>
				&nbsp;</p>
			<p>
				<asp:Button ID="PlusButton" runat="server" OnClick="PlusButton_Click" Text="+" />
&nbsp;<asp:Button ID="minusButton" runat="server" OnClick="minusButton_Click" Text="-" />
&nbsp;<asp:Button ID="multiplyButton" runat="server" OnClick="multiplyButton_Click" Text="*" />
&nbsp;<asp:Button ID="divideButton" runat="server" OnClick="divideButton_Click" Text="/" />
&nbsp;</p>
			<p>
				&nbsp;</p>
			<p>
				<asp:Label ID="resultLabel" runat="server" Font-Bold="True" Font-Size="Larger" ForeColor="#00CCFF"></asp:Label>
			</p>
			<p>
				&nbsp;</p>
        </div>
    </form>
</body>
</html>
