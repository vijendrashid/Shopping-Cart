using System;

public partial class Admin_Panel_Admin : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Cache.SetExpires(DateTime.Now.AddMonths(1));
        //Response.Cache.SetCacheability(HttpCacheability.ServerAndPrivate);
        //Response.Cache.SetValidUntilExpires(true);
    }
}