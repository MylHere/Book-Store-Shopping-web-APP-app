using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex04Cart
{
    public partial class Products : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            string product = ddlProducts.SelectedItem.Text;
            int price = int.Parse(ddlProducts.SelectedItem.Value); // Convert the Value to an int
            int quantity = int.Parse(txtQuantity.Text);
            string cartItem = $"{product} ${price} each - Quantity: {quantity}"; // Corrected the format for the price

            List<string> cartItems;
            if (Session["cartItems"] != null)
            {
                cartItems = (List<string>)Session["cartItems"];
            }
            else
            {
                cartItems = new List<string>();
            }

            cartItems.Add(cartItem);
            Session["cartItems"] = cartItems;
            Response.Write("<script>alert('Product added to cart successfully.');</script>");
        }


        protected void btnGoToCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}
