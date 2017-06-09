using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EpicSpiesChallenge
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!Page.IsPostBack)
			{
				previousCalendar.SelectedDate = DateTime.Now.Date;
				newCalendar.SelectedDate = DateTime.Now.AddDays(14);
				endCalendar.SelectedDate = DateTime.Now.AddDays(21);
			}
		}

		protected void assignButton_Click(object sender, EventArgs e)
		{
			//spies cost $500/day!
			TimeSpan totalDurationOfAssignment = endCalendar.SelectedDate.Subtract(newCalendar.SelectedDate);
			double totalCost = totalDurationOfAssignment.TotalDays * 500.0;

			//if greater than 21 days then + $1,000
			if (totalDurationOfAssignment.TotalDays > 21)
				totalCost += 1000.0;

			resultLabel.Text = String.Format("Assignment of {0} to assignment {1} is authorized. Budget total: {2:C}", 
				codeNameTextBox.Text, 
				assignmentTextBox.Text, 
				totalCost);

			TimeSpan timeBetweenAssignments = newCalendar.SelectedDate.Subtract(previousCalendar.SelectedDate);
			if (timeBetweenAssignments.TotalDays < 14)
			{
				resultLabel.Text = "Error! Must allow at least 2 weeks between previous assignment and new assignment!";

				DateTime earliestNewAssignmentDate = previousCalendar.SelectedDate.AddDays(14);

				newCalendar.SelectedDate = earliestNewAssignmentDate;
				newCalendar.VisibleDate = earliestNewAssignmentDate;
				
			}




		}
	}
}