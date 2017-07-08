<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SPAGroceryList.Default" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/knockout/3.4.2/knockout-min.js"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	
	<style type="text/css">
		#myGroceryList {
			width: 590px;
			height: 118px;
		}
	</style>
</head>
<body>

	<form id="addItem" runat="server">
    <p>Add item: </p>
		<asp:TextBox ID="groceryBox" runat="server" type="text" data-bind='value:itemToAdd, valueUpdate: "afterkeydown"'></asp:TextBox>
&nbsp;&nbsp;<asp:Button ID="addButton" runat="server" OnClick="addButton_Click" Text="Add" type="submit" data-bind="enable: itemToAdd().length > 0"/>
 
	<p>Your List:</p>
		<asp:ListBox ID="groceryList" runat="server"  multiple="multiple" data-bind="options:allItems, selectedOptions:selectedItems"  style="width: 616px; height: 160px" OnSelectedIndexChanged="groceryList_SelectedIndexChanged" AppendDataBoundItems="True" AutoPostBack="True"></asp:ListBox>
&nbsp;
 
	<div>
	&nbsp;<asp:Button ID="removeButton" runat="server" Text="Remove" data-bind="click: removeSelected, enable: selectedItems().length > 0" OnClick="removeButton_Click" style="height: 26px"  />
	</div>
		</form>
<script type ="text/javascript">

	var BetterListModel = function () {
		this.itemToAdd = ko.observable("");
		this.allItems = ko.observableArray(["Juice", "Eggs", "Ham", "Beer"]); // Initial items
		this.selectedItems = ko.observableArray(["Ham"]);  // Initial selection
	};

		this.addItem = function () {
			if ((this.itemToAdd() != "") && (this.allItems.indexOf(this.itemToAdd()) < 0)) // Prevent blanks and duplicates
				this.allItems.push(this.itemToAdd());
			this.itemToAdd(""); // Clear the text box
		};

		this.removeSelected = function () {
			this.allItems.removeAll(this.selectedItems());
			this.selectedItems([]); // Clear selection
		};
		ko.applyBindings(new BetterListModel());

</script>
</body>
</html>

