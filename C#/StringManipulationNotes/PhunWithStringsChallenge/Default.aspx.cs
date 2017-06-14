using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PhunWithStringsChallenge
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void okButton_Click(object sender, EventArgs e)
		{
			//Back slashes are used to let intellisense know what were trying to do here
			//resultLabel.Text = "<p style=\"color:#ee3b32;\">HI</p>";

			//string value = valueTextBox.Text;

			//Access any specific character
			//resultLabel.Text = value[2].ToString();

			//Can also use EndsWith() OR Contains()
			/*if (value.StartsWith("A"))
				resultLabel.Text = "The value starts with A";*/

			//Shows index of something (handy to know for insert/remove statements)
			//int index = value.IndexOf("good");
			//resultLabel.Text = "'good' begins at index" + index.ToString();

			//Insert/Remove
			//resultLabel.Text = value.Insert(index, "jolly");
			//resultLabel.Text = value.Remove(index, value.Length - index);

			//Substrings
			//resultLabel.Text = value.Substring(index, value.Length - index - 1);

			//Trim (to trim on any empty characters)
			//resultLabel.Text = string.Format("Length before : {0}<br/>Length after : {1}", value.Length, value.Trim().Length);

			//PadLeft/PadRight
			//resultLabel.Text = value.PadLeft(10, '*');

			//ToUpper /ToLower (chages upper and lower casing in strings)
			//if (valueTextBox.Text.Trim().ToUpper() == "BOB") resultLabel.Text = "The Same";
			//else resultLabel.Text = "Different";

			//Replace
			//string template = "[NAME] said ok! Take it up with [NAME].";
			//resultLabel.Text = template.Replace("[NAME]", valueTextBox.Text);

			//Split (splits up 1 string into an array of strings)
			//string result = ""; OR
			//StringBuilder sb = new StringBuilder();

			//string[] values = valueTextBox.Text.Split(',');
			/*for (int i = 0; i < values.Length; i++)
			{
				//result += values[i] + " " + values[i].Length + "<br/>"; OR
				sb.Append(values[i]);
				sb.Append(" ");
				sb.Append(values[i].Length);
				sb.Append("<br />");
			}*/

			//resultLabel.Text = result; OR
			//resultLabel.Text = sb.ToString();


		}
	}
}