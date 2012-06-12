using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;

// Added Namespaces
using System.IO;
using System.Linq;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using customCart;

public partial class product_details : System.Web.UI.Page
{
    private static String _smPrice;
    private static int dayDelivered;
    private static String days;
    private static decimal discount;

    // Shopping Cart Varibles initialized
    private static string itemPic;

    private static decimal mPrice;
    private static String name;
    private static decimal price;
    private static string prod_id;
    private static int quantity;
    private static String sDiscount;
    private static String sPrice;
    private static decimal total;
    private static string type;

    protected void addToCart1_Click(object sender, EventArgs e)
    {
        CartItem newItem = new CartItem(name, price, itemPic, type,
                            quantity, total, mPrice, dayDelivered, discount, prod_id);
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

            _smPrice = rowView["M_Price"].ToString();
            mPrice = decimal.Parse(_smPrice) * quantity;

            days = rowView["days_delivered"].ToString();
            dayDelivered = Convert.ToInt32(days);

            sDiscount = rowView["discount_percent"].ToString();
            discount = decimal.Parse(sDiscount);

            prod_id = rowView["prod_Id"].ToString();
        }
    }

    protected void likeRating_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        // Guid userGuid = (Guid)Membership.GetUser().ProviderUserKey;

        System.Threading.Thread.Sleep(500);
        int iRate = Convert.ToInt16(e.Value);
        string strMessage = string.Empty;
        switch (iRate)
        {
            case 1:
                strMessage = "Not Useful";
                break;
            case 2:
                strMessage = "Average";
                break;
            case 3:
                strMessage = "Useful";
                break;
            case 4:
                strMessage = "Informative";
                break;
            case 5:
                strMessage = "Excellent";
                break;
        }
        strMessage = "Thanks for Rating, You found this Question " + strMessage;
        e.CallbackResult = strMessage;
    }

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

        #endregion Request to querystring value for retriving product details
    }
}