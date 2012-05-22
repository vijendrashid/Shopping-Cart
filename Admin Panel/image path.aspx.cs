using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Panel_image_path : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string folderName = FilepathTextBox.Text;
        if (upImage.HasFile)
        {
            if (CheckFileType(upImage.FileName))
            {
                // Specify a "currently active folder"
                string activeDir = "E:/Git Hub/Shopping-Cart/images/Products";


                //Create a new subfolder under the current active folder
                string newFolderPath = Path.Combine(activeDir, folderName);

                // Create the subfolder
                Directory.CreateDirectory(newFolderPath);
                //newFolderPath = newFolderPath + "/";

                // Note: Root Folder Specified explicitly
                string rootDir = "~/images/Products/" + folderName + "/";

                // Append Filename with the path                
                String filePath = rootDir + upImage.FileName;
                upImage.SaveAs(MapPath(filePath));


                //dlstImages.DataSource = filePath;
                //dlstImages.DataBind();


                //Add Entry to Database
                String strConnString = System.Configuration.ConfigurationManager
                                        .ConnectionStrings["HomeConnectionString"]
                                        .ConnectionString;

                SqlConnection con = new SqlConnection(strConnString);

                string strQuery = "INSERT INTO path(imagePath) VALUES(@imagePath)";

                SqlCommand cmd = new SqlCommand(strQuery);

                cmd.Parameters.AddWithValue("@imagePath", filePath);

                cmd.CommandType = CommandType.Text;
                cmd.Connection = con;
                con.Open();
                cmd.ExecuteNonQuery();
 
            }
        }
    }

    bool CheckFileType(string fileName)
    {
        string ext = Path.GetExtension(fileName);
        switch (ext.ToLower())
        {
            case ".gif":
                return true;
            case ".png":
                return true;
            case ".jpg":
                return true;
            case ".jpeg":
                return true;
            default:
                return false;
        }
    }

    //void Page_PreRender()
    //{


    //    DirectoryInfo dir = new DirectoryInfo(newFolderPath);
    //    dlstImages.DataSource = dir.GetFiles();
    //    dlstImages.DataBind();

    //}
}
