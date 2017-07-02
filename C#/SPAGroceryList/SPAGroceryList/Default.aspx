<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SPAGroceryList.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<script src="Scripts/knockout-2.3.0.js"></script>
	<script src="Scripts/jquery-1.10.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<br />
			Add Item:&nbsp;
        	<asp:TextBox ID="groceryBox" runat="server"></asp:TextBox>
			&nbsp;
			<asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Add" />
			<br />
			<br />
			<h2>Your List:</h2>
			<p>
				<asp:ListBox ID="myGroceryList" runat="server" AutoPostBack="True" Height="132px" Width="708px"></asp:ListBox>
			</p>
        </div>
    	<asp:Button ID="removeButton" runat="server" Text="Remove" />
    </form>
</body>
</html>
