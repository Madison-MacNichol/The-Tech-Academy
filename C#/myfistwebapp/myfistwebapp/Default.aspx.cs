﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace myfistwebapp
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void okButton_Click(object sender, EventArgs e)
		{
			string firstName = firstnameTextbox.Text;
			string lastName = lastnameTextbox.Text;

			string result = "Hello " + firstName + "" + lastName; 

			resultLabel.Text = result;



		}
	}
}