using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class gallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
           
      
    }
    protected void galleryDataList_PreRender(object sender, EventArgs e)
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
}