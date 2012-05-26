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
public partial class gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        String strConnString = System.Configuration.ConfigurationManager
                                        .ConnectionStrings["HomeConnectionString"]
                                        .ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);

        string folderImages = null;
        string getQuery = "10000";

        string strQuery = "SELECT folder_images FROM Product_details WHERE prod_id = '"+ getQuery + "'";
        
        SqlCommand cmd = new SqlCommand(strQuery,con);
        con.Open();
        SqlDataReader myReader = cmd.ExecuteReader();

        while(myReader.Read())
        {
            folderImages = myReader["folder_images"].ToString();
        }

        //string rootdir = @"E:/Git Hub/Shopping-Cart/";

        //
        string[] filesindirectory = Directory.GetFiles(Server.MapPath(folderImages));

        List<String> lstImages = new List<string>(filesindirectory.Count()); 

        foreach(string image in filesindirectory)
        {
            //lstImages.Add (String.Format("~"+folderImages, Path.GetPathRoot(image)));
            //string imageFileName = lstImages.ToString();

            

            HtmlGenericControl li = new HtmlGenericControl("li");
            ul1.Controls.Add(li);

            HtmlGenericControl anchor = new HtmlGenericControl("a");
            anchor.Attributes.Add("href", folderImages + Path.GetFileName(image));
            li.Controls.Add(anchor);

            HtmlGenericControl img = new HtmlGenericControl("img");
            img.Attributes.Add("src", folderImages + Path.GetFileName(image));
            img.Attributes.Add("width", "72");
            img.Attributes.Add("height", "80");
            anchor.Controls.Add(img);
        }



    }

}