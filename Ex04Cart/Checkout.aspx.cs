using System;
using System.Collections.Generic;
using System.Web.UI;

namespace Ex04Cart
{
    public partial class Checkout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnPlaceOrder_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Clear cart session
                Session["cartItems"] = new List<string>();

                // Clear form fields
                ClearFormFields();

                // Display order placed message
                lblMessage.Text = "Order Placed";
            }
        }

        protected void btnCancelOrder_Click(object sender, EventArgs e)
        {
            // Clear form fields
            ClearFormFields();
            lblMessage.Text = "Order Cancelled";
        }

        protected void btnContinueShopping_Click(object sender, EventArgs e)
        {
            // Navigate back to products page
            Response.Redirect("Products.aspx");
        }

        private void ClearFormFields()
        {
            txtEmail.Text = string.Empty;
            txtEmailRetry.Text = string.Empty;
            txtFirstName.Text = string.Empty;
            txtLastName.Text = string.Empty;
            txtPhone.Text = string.Empty;
            txtAddress.Text = string.Empty;
            txtCity.Text = string.Empty;
            txtState.Text = string.Empty;
            txtZip.Text = string.Empty;
            lblMessage.Text = string.Empty;
        }
    }
}
