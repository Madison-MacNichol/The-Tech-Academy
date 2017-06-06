using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstChallenge
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void fortuinKnop_Click(object sender, EventArgs e)
		{
			string leeftijd = leeftijdTextbox.Text;
			string zakjeGeld = zakjeGeldTextbox.Text;

			string resultat = "U bent " + leeftijd + "??. Ik verwacht dat u meer dan $" + zakjeGeld + " in uw zakje te hebben!";

			resultatLabel.Text = resultat;



		}

		protected void zakjeGeld_TextChanged(object sender, EventArgs e)
		{

		}
	}
}