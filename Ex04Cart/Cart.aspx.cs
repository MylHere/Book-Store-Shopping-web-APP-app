using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Ex04Cart
{
    public partial class Cart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateCartItems();
            }
        }

        private void PopulateCartItems()
        {
            if (Session["cartItems"] != null)
            {
                List<string> cartItems = (List<string>)Session["cartItems"];
                lstCart.Items.Clear();
                foreach (string item in cartItems)
                {
                    lstCart.Items.Add(item);
                    string[] itemDetails = item.Split(new string[] { " - " }, StringSplitOptions.None);
                    if (itemDetails.Length == 3)
                    {
                        string itemName = itemDetails[0];
                        decimal itemPrice = Convert.ToDecimal(itemDetails[1].Split('$')[1]);
                        int itemQuantity = Convert.ToInt32(itemDetails[2]);

                        string formattedItem = $"{itemName} - ${itemPrice} each - {itemQuantity}";
                        lstCart.Items[lstCart.Items.Count - 1].Text = formattedItem;
                    }
                }
            }
        }


        protected void btnRemove_Click(object sender, EventArgs e)
        {
            if (lstCart.SelectedIndex >= 0)
            {
                lstCart.Items.RemoveAt(lstCart.SelectedIndex);
                UpdateCartSession();
                lblMessage.Text = "Item removed from cart.";
            }
            else
            {
                lblMessage.Text = "Please select an item to remove.";
            }
        }

        protected void btnEmpty_Click(object sender, EventArgs e)
        {
            lstCart.Items.Clear();
            UpdateCartSession();
            lblMessage.Text = "Cart has been emptied.";
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("Products.aspx");
        }protected void btnCheckOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Checkout.aspx");
        }

        private void UpdateCartSession()
        {
            List<string> cartItems = new List<string>();
            foreach (ListItem item in lstCart.Items)
            {
                cartItems.Add(item.ToString());
            }
            Session["cartItems"] = cartItems;
        }
    }
}
