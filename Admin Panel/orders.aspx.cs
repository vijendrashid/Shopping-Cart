using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Security;
using System.Web.Security;

public partial class Admin_Panel_orders : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Guid userGuid = (Guid)Membership.GetUser().ProviderUserKey;
        //Response.Write(userGuid);
            
    }
    protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
    {
        //String strConnString = System.Configuration.ConfigurationManager
        //                        .ConnectionStrings["HomeConnectionString"]
        //                        .ConnectionString;

        //SqlConnection con = new SqlConnection(strConnString);
        string query = e.NewValues.ToString();
        Response.Write(query);


    }
    protected void SqlDataSource1_Updated(object sender, SqlDataSourceStatusEventArgs e)
    {
        

    }
    protected void SqlDataSource1_Updating(object sender, SqlDataSourceCommandEventArgs e)
    {
       
    }
}