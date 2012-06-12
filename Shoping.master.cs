using System;
using System.Web.UI.WebControls;

public partial class Shoping : System.Web.UI.MasterPage
{
    protected void btncart_PreRender(object sender, EventArgs e)
    {
        btncart.Text = "Cart( " + Profile.ShoppingCart.Items.Count + " )";
    }

    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        Label msgLogin = new Label();
        if (gvCart.Rows.Count > 0)
        {
            if (Request.IsAuthenticated)
            {
                Response.Redirect("~/Account/Checkout.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
                msgLogin.Text = "Sorry, First You have to Login or Register!";
            }
        }
    }

    protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (gvCart.Rows.Count > 0)
            Profile.ShoppingCart.Items.RemoveAt(e.RowIndex);
        if (gvCart.Rows.Count < 0)
        {
            btnPlaceOrder.Enabled = false;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        lblmsg.Text = "This website has been visited " + (Application["PageRequestCount"]) + " times.";
    }

    private void Page_PreRender()
    {
        gvCart.DataSource = Profile.ShoppingCart.Items;
        gvCart.DataBind();

        if (gvCart.Rows.Count > 0)
        {
            btnPlaceOrder.Enabled = true;
        }
    }
}