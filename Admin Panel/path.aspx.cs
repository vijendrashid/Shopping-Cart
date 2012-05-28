using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Panel_path : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //// Request to querystring value for retriving product details
        //string getQuery = "10000";//Request.QueryString["prod_id"];

        //String strConnString = System.Configuration.ConfigurationManager
        //                               .ConnectionStrings["HomeConnectionString"]
        //                               .ConnectionString;
        //SqlConnection con = new SqlConnection(strConnString);

        //string folderImages = "";

        //string strQuery = "SELECT folder_images FROM Product_details WHERE prod_id = '" + getQuery + "'";

        //SqlCommand cmd = new SqlCommand(strQuery, con);
        //con.Open();

        //SqlDataReader myReader = cmd.ExecuteReader();

        //while (myReader.Read())
        //{
        //    folderImages = myReader["folder_images"].ToString();
        //}

        //string virtualpath = Convert.ToString(Directory.GetFiles(Server.MapPath(@"~\images\")));

        string appPath = HttpContext.Current.Request.ApplicationPath;

        string physicalPath = HttpContext.Current.Request.MapPath(appPath);

        Response.Write(physicalPath);
    }
}