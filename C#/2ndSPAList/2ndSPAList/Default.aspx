<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_2ndSPAList.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
			<input name="txtValue" type="text" />
			<input type="button" name="add" value="Add" onclick="addValue();" />
			<select name="lstValue" multiple="multiple" style="width: 143px"></select>
			<input type="button" name="delete" value="Delete" onclick="deleteValue();" />
        </div>
    </form>
<script type ="text/javascript">
	var i = 0;
	function addValue() {
		var v = document.form1.txtValue.value;
		// get the TextBox Value and assign it into the variable
		AddOpt = new Option(v, v);
		document.form1.lstValue.options[i++] = AddOpt;
		return true;
		};
</script>
</body>
</html>
