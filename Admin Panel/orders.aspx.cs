using System;
using System.Web.UI.WebControls;

public partial class Admin_Panel_orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Guid userGuid = (Guid)Membership.GetUser().ProviderUserKey;
        //Response.Write(userGuid);
    }

    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
    }

    protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
    }

    protected void SqlDataSource1_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
    }
}