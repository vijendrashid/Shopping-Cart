using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Shoping : System.Web.UI.MasterPage
{
    public void conection()
    {
        String strConnString = System.Configuration.ConfigurationManager
                                       .ConnectionStrings["HomeConnectionString"]
                                       .ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);
    }
    void Page_PreRender()
    {
        
            gvCart.DataSource = Profile.ShoppingCart.Items;
            gvCart.DataBind();
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
    protected void btnPlaceOrder_Click(object sender, EventArgs e)
    {
        string titles;
        //string name = "";
        for (int r = 0; r < gvCart.Rows.Count; r++)
        {

            titles = gvCart.Rows[r].Cells[0].Text;
            Response.Write(titles);
            //for (int c = 1; c <= GridView1.Rows[r].Cells.Count; c++)
            //{
            //    titles = GridView1.Rows[r].Cells[c].Text;
            //    name = name + " " + titles;
            //    c++;
            //}
            
        }
        //string name = GridView1.Rows[0].Cells[0].Text;
        //decimal totalprice = decimal.Parse(GridView1.Rows[0].Cells[1].Text);
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Profile.ShoppingCart.Items.RemoveAt(e.RowIndex);
    }
  
}
