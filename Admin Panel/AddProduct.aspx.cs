using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
// Added
using System.IO;
using System.Data;
using System.Data.SqlClient;
public partial class Admin_Panel_AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        string skuNo = txtSku.Text;
        string productTitle = txtPro_Title.Text;
        decimal weight = Convert.ToDecimal(txtWeight.Text);
        string metaKeywords = txtMetaKeywords.Text;
        string metaDesc = txtMetaDescription.Text;
        string category = ddlCategory.SelectedItem.Text;
        string brandName = txtBrand.Text;
        string color = txtColour.Text;
        string features = ckeditorFeatures.Text;
        string description = ckeditorDescription.Text;
        float productPrice = float.Parse(txtPrice.Text);
        float marketPrice = float.Parse(txtMrkt_price.Text);
        int quantity = Convert.ToInt32(txtQty.Text);
        int delivrdDays = Convert.ToInt16(txtDelivrd_Days.Text);

        string folderName = txtProductFolderName.Text;

        String filePath1 = null;
        String filePath2 = null;
        String filePath3 = null;
        String filePath4 = null;
        String filePath5 = null;
        String filePath6 = null;
        String filePath7 = null;
        String filePath8 = null;
        String filePath9 = null;
        String filePath10 = null;
        String filePath11 = null;

        #region Upload Files
        if (fupl_img1.HasFile)
        {
            //if (CheckFileType(fupl_img1.FileName))
            //{
            // Specify a "currently active folder"
            string activeDir = "E:/Git Hub/Shopping-Cart/images/Products";


            //Create a new subfolder under the current active folder
            string newFolderPath = Path.Combine(activeDir, folderName);

            // Create the subfolder
            Directory.CreateDirectory(newFolderPath);
            //newFolderPath = newFolderPath + "/";

            // Note: Root Folder Specified explicitly
            string rootDir = "~/images/Products/" + folderName + "/";



            // Append Filename with the path to images               
            filePath1 = rootDir + fupl_img1.FileName;
            

            //Image1
            fupl_img1.SaveAs(MapPath(filePath1));

            //image2               
            if (fupl_img2.HasFile)
            {
                filePath2 = rootDir + fupl_img2.FileName;
                fupl_img2.SaveAs(MapPath(filePath2));
            }
            else
            {
                filePath2 = "" ;
            }
            //image3   
            if (fupl_img3.HasFile)
            {
                filePath3 = rootDir + fupl_img3.FileName;
                fupl_img3.SaveAs(MapPath(filePath3));
            }
            else
            {
                filePath3 = "";
            }
            //image4              
            if (fupl_img4.HasFile)
            {
                filePath4 = rootDir + fupl_img4.FileName;
                fupl_img4.SaveAs(MapPath(filePath4));
            }
            else
            {
                filePath4 = "";
            }

            //image1               
            if (fupl_img5.HasFile)
            {
                filePath5 = rootDir + fupl_img5.FileName;
                fupl_img5.SaveAs(MapPath(filePath5));
            }
            else
            {
                filePath5 = "";
            }

            //image1               
            if (fupl_img6.HasFile)
            {
                filePath6 = rootDir + fupl_img6.FileName;
                fupl_img6.SaveAs(MapPath(filePath6));
            }
            else
            {
                filePath6 = "";
            }

            //image1         
            if (fupl_img7.HasFile)
            {
                filePath7 = rootDir + fupl_img7.FileName;
                fupl_img7.SaveAs(MapPath(filePath7));
            }
            else
            {
                filePath7 = "";
            }

            //image1               
            if (fupl_img8.HasFile)
            {
                filePath8 = rootDir + fupl_img8.FileName;
                fupl_img8.SaveAs(MapPath(filePath8));
            }
            else
            {
                filePath8 = "";
            }

            //image1 
            if (fupl_img9.HasFile)
            {
                filePath9 = rootDir + fupl_img9.FileName;
                fupl_img9.SaveAs(MapPath(filePath9));
            }
            else
            {
                filePath9 = "";
            }

            //image1        
            if (fupl_img10.HasFile)
            {
                filePath10 = rootDir + fupl_img10.FileName;
                fupl_img10.SaveAs(MapPath(filePath10));
            }
            else
            {
                filePath10 = "";
            }

            //image1      
            if (fupl_img11.HasFile)
            {
                filePath11 = rootDir + fupl_img11.FileName;
                fupl_img11.SaveAs(MapPath(filePath11));
            }
            else
            {
                filePath11 = "";
            }
        }
        #endregion


        //dlstImages.DataSource = filePath;
        //dlstImages.DataBind();


        //Add Entry to Database
        String strConnString = System.Configuration.ConfigurationManager
                                .ConnectionStrings["HomeConnectionString"]
                                .ConnectionString;

        SqlConnection con = new SqlConnection(strConnString);

        string strQuery = "INSERT INTO Product_Details (sku, prod_title, "
                        +   "prod_weight_kgs, meta_keywords_optional, meta_description, "
                        +   "category, prod_brand,prod_color, prod_features, "
                        +   "prod_description, O_price, m_price,stock, days_delivered, "
                        +   "prod_img1, prod_img2, prod_img3, prod_img4, "
                        +   "prod_img5, prod_img6, prod_img7, prod_img8, prod_img9, "
                        +   "prod_img10,prod_img11) "
                        +   "VALUES (@sku, @prod_title, @prod_weight_kgs, @meta_keywords_optional, "
                        +   "@meta_description, @category, @prod_brand, @prod_color, "
                        +   "@prod_features, @prod_description, @O_price, @m_price, @stock, "
                        +   "@days_delivered, @prod_img1, @prod_img2, @prod_img3, @prod_img4, "
                        +   "@prod_img5, @prod_img6, @prod_img7, @prod_img8, "
                        +   "@prod_img9,@prod_img10, @prod_img11) ";

        SqlCommand cmd = new SqlCommand(strQuery);

        // Parameteres to pass with the strQuery
        cmd.Parameters.AddWithValue("@sku", skuNo);
        cmd.Parameters.AddWithValue("@prod_title", productTitle);
        cmd.Parameters.AddWithValue("@prod_weight_kgs", weight);
        cmd.Parameters.AddWithValue("@meta_keywords_optional", metaKeywords);
        cmd.Parameters.AddWithValue("@meta_description", metaDesc);
        cmd.Parameters.AddWithValue("@category", category);
        cmd.Parameters.AddWithValue("@prod_brand", brandName);
        cmd.Parameters.AddWithValue("@prod_color", color);
        cmd.Parameters.AddWithValue("@prod_features", features);
        cmd.Parameters.AddWithValue("@prod_description", description);
        cmd.Parameters.AddWithValue("@O_price", productPrice);
        cmd.Parameters.AddWithValue("@m_price", marketPrice);
        cmd.Parameters.AddWithValue("@stock", quantity);
        cmd.Parameters.AddWithValue("@days_delivered", delivrdDays);
        cmd.Parameters.AddWithValue("@prod_img1", filePath1);
        cmd.Parameters.AddWithValue("@prod_img2", filePath2);
        cmd.Parameters.AddWithValue("@prod_img3", filePath3);
        cmd.Parameters.AddWithValue("@prod_img4", filePath4);
        cmd.Parameters.AddWithValue("@prod_img5", filePath5);
        cmd.Parameters.AddWithValue("@prod_img6", filePath6);
        cmd.Parameters.AddWithValue("@prod_img7", filePath7);
        cmd.Parameters.AddWithValue("@prod_img8", filePath8);
        cmd.Parameters.AddWithValue("@prod_img9", filePath9);
        cmd.Parameters.AddWithValue("@prod_img10", filePath10);
        cmd.Parameters.AddWithValue("@prod_img11", filePath11);

        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;

        con.Open();
        cmd.ExecuteNonQuery();
        //try
        //{
        //    con.Open();
        //    cmd.ExecuteNonQuery();
        //}
        //catch (Exception ex)
        //{
        //    Response.Write(ex.Message);
        //}
        //finally
        //{
        //    con.Close();
        //    con.Dispose();
        //}

        //}



        ////Note: Finding Controls from FormView and giving same name as id
        //var txtProdutFolderName = AddProductFormView1.FindControl("txtProdutFolderName") as TextBox;


    }


    //bool CheckFileType(string fileName)
    //{
    //    string ext = Path.GetExtension(fileName);
    //    switch (ext.ToLower())
    //    {
    //        case ".gif":
    //            return true;
    //        case ".png":
    //            return true;
    //        case ".jpg":
    //            return true;
    //        case ".jpeg":
    //            return true;
    //        default:
    //            return false;
    //    }
    //}

    //void Page_PreRender()
    //{


    //    DirectoryInfo dir = new DirectoryInfo(newFolderPath);
    //    dlstImages.DataSource = dir.GetFiles();
    //    dlstImages.DataBind();

    //}
}