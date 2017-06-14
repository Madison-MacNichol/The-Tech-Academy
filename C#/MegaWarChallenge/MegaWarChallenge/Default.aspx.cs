using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MegaWarChallenge
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void playButton_Click(object sender, EventArgs e)
		{
			//This was a test
			/*Deck deck = new Deck();
			foreach (var card in deck._deck)
			{
				resultLabel.Text += "<br/>" + card.Suit + " " + card.Kind;
			}*/

			Game game = new Game("Player1", "Player2");
			resultLabel.Text = game.Play();
		}
	}
}