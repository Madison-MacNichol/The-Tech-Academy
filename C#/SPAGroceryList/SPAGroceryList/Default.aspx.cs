using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SPAGroceryList
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void addButton_Click(object sender, EventArgs e)
		{
			string item = (groceryBox.Text);
			string result = item;
			myGroceryList.Text = result;
		}

		public class ListBox : ListControl
		{
			
		}

	}
}