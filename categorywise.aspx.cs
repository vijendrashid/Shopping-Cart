using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class categorywise : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //string getQuery = Request.QueryString["category"];

        //String strConnString = System.Configuration.ConfigurationManager
        //                               .ConnectionStrings["HomeConnectionString"]
        //                               .ConnectionString;
        //SqlConnection con = new SqlConnection(strConnString);

       

        //string strQuery = "SELECT * FROM Product_details WHERE category = '" + getQuery + "'";

        //SqlCommand cmd = new SqlCommand(strQuery, con);
        //con.Open();

        //SqlDataReader myReader = cmd.ExecuteReader();

        //while (myReader.Read())
        //{
        //    folderImages = myReader["folder_images"].ToString();
        //}


    }
}