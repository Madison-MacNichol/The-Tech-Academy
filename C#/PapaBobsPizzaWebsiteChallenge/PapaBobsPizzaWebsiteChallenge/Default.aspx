<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PapaBobsPizzaWebsiteChallenge.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
	<style type="text/css">
		.auto-style1 {
			width: 200px;
			height: 200px;
		}
		.auto-style2 {
			font-family: Arial, Helvetica, sans-serif;
		}
		.auto-style3 {
			color: #FF0000;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	<img alt="" class="auto-style1" src="PapaBob.png" /><h1 class="auto-style2">Papa Bobs Pizza and Software</h1>
			<p>
				<asp:RadioButton ID="smallRadioButton" runat="server" GroupName="SizeGroup" Text="Baby Bob Style (10&quot;)-$10" />
&nbsp;<br />
				<asp:RadioButton ID="mediumRadioButton" runat="server" GroupName="SizeGroup" Text="Mama Bob Size (13&quot;)-$13" />
				<br />
				<asp:RadioButton ID="largeRadioButton" runat="server" GroupName="SizeGroup" Text="Papa Bob Size (16&quot;)-$16" />
			</p>
			<p>
				<br />
				<asp:RadioButton ID="thinRadioButton" runat="server" GroupName="CrustGroup" Text="Thin Crust" />
				<br />
				<asp:RadioButton ID="deepRadioButton" runat="server" GroupName="CrustGroup" Text="Deep Dish (+$2)" />
			</p>
			<p>
				<asp:CheckBox ID="pepperoniCheckBox" runat="server" Text="Pepperoni (+$1.50)" />
				<br />
				<asp:CheckBox ID="onionsCheckBox" runat="server" Text="Onions (+$.75)" />
				<br />
				<asp:CheckBox ID="greenPeppersCheckBox" runat="server" Text="Green Peppers (+$.50)" />
				<br />
				<asp:CheckBox ID="redPeppersCheckBox" runat="server" Text="Red Peppers (+$.75)" />
				<br />
				<asp:CheckBox ID="anchoviesCheckBox" runat="server" Text="Anchovies (+$2)" />
			</p>
			<p class="auto-style2">
				<strong>Papa Bob&#39;s <span class="auto-style3">Special Deal</span></strong></p>
			<p>
				Save $2 when you add Pepperoni, Green Peppers &amp; Anchovies OR Pepperoni, Red Peppers &amp; Onions to you pizza!!</p>
			<p>
				<asp:Button ID="purchaseButton" runat="server" OnClick="purchaseButton_Click" Text="Purchase" />
			</p>
			<p>
				Total: <asp:Label ID="totalLabel" runat="server" Text="$0.00"></asp:Label>
			</p>
			<p>
				Our apologies! At this time you can only order 1 pizza online and only take away is available. We are working on a better website to handle this issue!<br />
				<br />
			</p>
        </div>
    </form>
</body>
</html>
