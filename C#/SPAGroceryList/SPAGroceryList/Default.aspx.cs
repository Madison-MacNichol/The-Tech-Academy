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
			/*string item = (groceryBox.Text);
			string result = item;
			groceryList.Text = result;*/

		}

		protected void removeButton_Click(object sender, EventArgs e)
		{
			
		}

		protected void groceryList_SelectedIndexChanged(object sender, EventArgs e)
		{
			
		}

		protected void groceryBox_Leave(object sender, System.EventArgs e)
		{
			groceryList.Items.Add(((TextBox)sender).Text);
		}
	}
}