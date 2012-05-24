using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Added Namespaces
using System.IO;

public partial class product_details : System.Web.UI.Page
{
    //string getQuery = ClientQueryString; //obtain variables from passed link ?passedinstruction
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            DirectoryInfo myImageDir = new DirectoryInfo(MapPath("~/images/Products/Motorola RAZR XT910 (Mercury Silver)/"));
            try
            {
                galleryDataList.DataSource = myImageDir.GetFiles();
                galleryDataList.DataBind();
            }
            catch (System.IO.DirectoryNotFoundException)
            {
                Response.Write("<script language =Javascript> alert('Upload File(s) First!');</script>");
            }
        }
//        private void ListImages()
//{
//    DirectoryInfo dir = new DirectoryInfo(MapPath("~/images"));
//    FileInfo[] file = dir.GetFiles();
//    ArrayList list = new ArrayList();
//    foreach (FileInfo file2 in file)
//    {
//        if (file2.Extension == ".jpg" || file2.Extension == ".jpeg" || file2.Extension == ".gif" || file2.Extension == ".png")
//        {
//            list.Add(file2);
//        }
//    }
//    DataList1.DataSource = list;
//    DataList1.DataBind();
//}

    }
}