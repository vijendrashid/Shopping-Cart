using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Added Namespaces
using System.IO;
using System.Web.UI.HtmlControls;
using System.Data;
using System.Data.SqlClient;

public partial class product_details : System.Web.UI.Page
{
    //string getQuery = ClientQueryString; //obtain variables from passed link ?passedinstruction
    protected void Page_Load(object sender, EventArgs e)
    {
        // Request to querystring value for retriving product details
        string getQuery = Request.QueryString["prod_id"];

        String strConnString = System.Configuration.ConfigurationManager
                                       .ConnectionStrings["HomeConnectionString"]
                                       .ConnectionString;
        SqlConnection con = new SqlConnection(strConnString);

        string folderImages = null;

        string strQuery = "SELECT folder_images FROM Product_details WHERE prod_id = '" + getQuery + "'";

        SqlCommand cmd = new SqlCommand(strQuery, con);
        con.Open();

        SqlDataReader myReader = cmd.ExecuteReader();

        while (myReader.Read())
        {
            folderImages = myReader["folder_images"].ToString();
        }

        // Returns physical path that returns all files name
        string[] filesindirectory = Directory.GetFiles(Server.MapPath(folderImages));


        List<String> lstImages = new List<string>(filesindirectory.Count());

        //Dyanamically add HTML controls
        foreach (string image in filesindirectory)
        {
            //Append li to ul
            HtmlGenericControl li = new HtmlGenericControl("li");
            ul1.Controls.Add(li);

            // Create anchor tag with attribute value set for href
            HtmlGenericControl anchor = new HtmlGenericControl("a");
            anchor.Attributes.Add("href", folderImages + Path.GetFileName(image));
            li.Controls.Add(anchor);

            // Create <img> with attribute value set for height and width, added within anchor tag
            HtmlGenericControl img = new HtmlGenericControl("img");
            img.Attributes.Add("src", folderImages + Path.GetFileName(image));
            img.Attributes.Add("width", "72");
            img.Attributes.Add("height", "80");
            anchor.Controls.Add(img);
        }
    }
}