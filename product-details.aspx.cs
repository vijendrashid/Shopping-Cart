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
using customCart;

public partial class product_details : System.Web.UI.Page
{
    static String name;
    static String sPrice;
    static decimal price;
    static string itemPic;
    static string type;
    static int quantity;
    static decimal total;

    protected void Page_Load(object sender, EventArgs e)
    {

        #region Request to querystring value for retriving product details
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
        #endregion

    }

    protected void addToCart1_Click(object sender, EventArgs e)
    {
        CartItem newItem = new CartItem(name, price, itemPic, type, quantity, total);
        Profile.ShoppingCart.Items.Add(newItem);

        //GridView gridCart = Master.FindControl("gvCart") as GridView;

        //gridCart.DataSource = Profile.ShoppingCart.Items;
        //gridCart.DataBind();

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
            itemPic = rowView["prod_img1"].ToString();
            type = rowView["category"].ToString();
            quantity = 1;
            total = quantity * price;
        }

    }
    protected void ButtonSubmit_Click(object sender, EventArgs e)
    {
        string howMuch = "[unknown]";

        switch (likeRating.CurrentRating)
        {
            case 1:
                howMuch = "a bit.";
                break;
            case 2:
                howMuch = "some.";
                break;
            case 3:
                howMuch = "a fair bit.";
                break;
            case 4:
                howMuch = "a lot.";
                break;
            case 5:
                howMuch = "more than any thing.";
                break;
        }

        LabelResponse.Text = "You like ASP.NET AJAX <b>" + howMuch + "</b>.";

    }

    protected void likeRating_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {

    }
}