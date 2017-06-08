<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EpicSpiesChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 150px;
			height: 191px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<img alt="" class="auto-style1" src="epic-spies-logo.jpg" /><br />
			<br />
			<h2>Spy New Assignment Form</h2>
			<p>
				Spy Code Name:
				<asp:TextBox ID="codeNameTextBox" runat="server"></asp:TextBox>
			</p>
			<p>
				New Assignment Name:
				<asp:TextBox ID="assignmentTextBox" runat="server"></asp:TextBox>
			</p>
			End Date of Previous Assignment:<br />
			<asp:Calendar ID="previousCalendar" runat="server"></asp:Calendar>
			<br />
			<br />
			Start Date of New Assignment:<br />
			<asp:Calendar ID="newCalendar" runat="server"></asp:Calendar>
			<p>
				Projected End Date of New Assignment:</p>
			<asp:Calendar ID="endCalendar" runat="server"></asp:Calendar>
			<br />
			<br />
			<asp:Button ID="assignButton" runat="server" OnClick="assignButton_Click" Text="Assign Spy" />
			<br />
			<br />
			<asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
