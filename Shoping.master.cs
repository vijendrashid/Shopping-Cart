using System;
using System.Web.UI.WebControls;

public partial class Shoping : System.Web.UI.MasterPage
{
    protected void btncart_PreRender(object sender, EventArgs e)
    {
        // Display number of items in shopping cart
        //btncart.Text = "Cart( " + Profile.ShoppingCart.Items.Count + " )";
    }

    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        Label msgLogin = new Label();
        //Check Cart items are more than 0.
        if (gvCart.Rows.Count > 0)
        {
            // Redirect to Checkout.aspx, if user is logged in.
            if (Request.IsAuthenticated)
            {
                Response.Redirect("~/Account/Checkout.aspx");
            }
            else
            {
                // Redirect to Login.apsx, if user is not logged in.
                Response.Redirect("login.aspx");
                msgLogin.Text = "Sorry, First You have to Login or Register!";
            }
        }
    }

    protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        // Remove Cart Items Dynamically one by one.
        if (gvCart.Rows.Count > 0)
        {
            Profile.ShoppingCart.Items.RemoveAt(e.RowIndex);
        }
        //if (gvCart.Rows.Count < 0)
        //{
        //    btnPlaceOrder.Enabled = false;
        //}
    }

    private void Page_PreRender()
    {
        // Bind Shopping cart items to gvCart GridView
        gvCart.DataSource = Profile.ShoppingCart.Items;
        gvCart.DataBind();

        // Enable/Disable Place Order Button
        if (gvCart.Rows.Count > 0)
        {
            btnPlaceOrder.Enabled = true;
        }
        else
        {
            btnPlaceOrder.Enabled = false;
        }

        // Display number of items in shopping cart
        btncart.Text = "Cart( " + Profile.ShoppingCart.Items.Count + " )";
    }
}