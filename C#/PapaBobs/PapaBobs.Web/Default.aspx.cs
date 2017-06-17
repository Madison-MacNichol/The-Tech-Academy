using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PapaBobs.Web
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Button1_Click(object sender, EventArgs e)
		{
					
			var order = new DTO.OrderDTO();
			order.OrderId = Guid.NewGuid();
			order.Size = DTO.Enums.SizeType.Large;
			order.Crust = DTO.Enums.CrustType.Thick;
			order.Pepperoni = true;
			order.Name = "Test";
			order.Address = "123 Elm";
			order.ZipCode = "12345";
			order.Phone = "555-5555";
			order.PaymentType = DTO.Enums.PaymentType.Credit;
			order.TotalCost = 16.50M;
			
			Domain.OrderManager.CreateOrder(order);
		}

		protected void orderButton_Click(object sender, EventArgs e)
		{
			var order = new DTO.OrderDTO();
			order.Size = determineSize();
			order.Crust = determineCrust();
			order.Sausage = sausageCheckBox.Checked;
			order.Pepperoni = pepperoniCheckBox.Checked;
			order.Onions = onionsCheckBox.Checked;
			order.GreenPeppers = greenPeppersCheckBox.Checked;
			order.Name = nameTextBox.Text;
			order.Address = addressTextBox.Text;
			order.ZipCode = zipTextBox.Text;
			order.Phone = phoneTextBox.Text;
			order.PaymentType = determinePaymentType();

			Domain.OrderManager.CreateOrder(order);
		}

		private DTO.Enums.PaymentType determinePaymentType()
		{
			DTO.Enums.PaymentType paymentType;
			if (cashRadioButton.Checked)
			{
				paymentType = DTO.Enums.PaymentType.Cash;
			}
			else if (creditRadioButton.Checked)
			{
				paymentType = DTO.Enums.PaymentType.Credit;
			}
			else
			{
				throw new Exception("Payment type not selected.");
			}

			return paymentType;
		}

		private DTO.Enums.CrustType determineCrust()
		{
			DTO.Enums.CrustType crust;
			if (!Enum.TryParse(crustDropDownList.SelectedValue, out crust))
			{
				throw new Exception("Could not determine Pizza crust.");
			}
			return crust;
		}

		private DTO.Enums.SizeType determineSize()
		{
			DTO.Enums.SizeType size;
			if (!Enum.TryParse(sizeDropDownList.SelectedValue, out size))
			{
				throw new Exception("Could not deterine Pizza size.");
			}
			return size;
		}

	}
}