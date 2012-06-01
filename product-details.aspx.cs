﻿using System;
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
using customCart;

public partial class product_details : System.Web.UI.Page
{
    static String name;
    static String sPrice;
    static decimal price;
    //void Page_PreRender()
    //{
    //    GridView1.DataSource = Profile.ShoppingCart.Items;
    //    GridView1.DataBind();
    //}
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

    protected void addToCart1_Click(object sender, EventArgs e)
    {
        CartItem newItem = new CartItem(name, price);
        Profile.ShoppingCart.Items.Add(newItem);

    }
    protected void DetailsListView_ItemDataBound(object sender, ListViewItemEventArgs e)
    {
        ListViewDataItem dataItem = (ListViewDataItem)e.Item;
        if (e.Item.ItemType == ListViewItemType.DataItem)
        {
            DataRowView rowView = (DataRowView)dataItem.DataItem;

            name = rowView["prod_title"].ToString();
            sPrice = rowView["O_price"].ToString();
            price = decimal.Parse(sPrice);
        }
        
    }

}