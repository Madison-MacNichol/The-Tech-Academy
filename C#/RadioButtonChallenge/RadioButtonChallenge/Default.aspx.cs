using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RadioButtonChallenge
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void okButton_Click(object sender, EventArgs e)
		{
			/*
			if (pencilRadioButton.Checked)
				resultLabel.Text = "You Selected Pencil";
			else if (penRadioButton.Checked)
				resultLabel.Text = "You Selected Pen";
			else if (phoneRadioButton.Checked)
				resultLabel.Text = "You Selected Phone";
			else if (tabletRadioButton.Checked)
				resultLabel.Text = "You Selected Tablet";
			else
				resultLabel.Text = "Please select an option!";
			*/

			if (pencilRadioButton.Checked)
				resultImage.ImageUrl = "pencil.png";
			else if (penRadioButton.Checked)
				resultImage.ImageUrl = "pen.png";
			else if (phoneRadioButton.Checked)
				resultImage.ImageUrl = "phone.png";
			else if (tabletRadioButton.Checked)
				resultImage.ImageUrl = "tablet.url";
			else
				resultLabel.Text = "Please select an option!";


		}
	}
}