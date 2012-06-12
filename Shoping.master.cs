using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class Shoping : System.Web.UI.MasterPage
{
    public void conection()
    {
        String strConnString = System.Configuration.ConfigurationManager
                                       .ConnectionStrings["HomeConnectionString"]
                                       .ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
    }

    protected void btncart_PreRender(object sender, EventArgs e)
    {
        if (Profile.ShoppingCart.Items == null)
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
        //Response.Cache.SetExpires(DateTime.Now.AddMonths(1));
        //Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);
        //Response.Cache.SetValidUntilExpires(true);

        lblmsg.Text = "This website has been visited " + (Application["PageRequestCount"]) + " times.";

        //if(Request.IsAuthenticated)
        //{
        //    lblLoginName.Text = Page.User.Identity.Name;
        //}
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