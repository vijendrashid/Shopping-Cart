using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Panel_ckeditor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string markup = EditorControl1.Text;
        string markup2 = EditorControl2.Text;

        String strConnString = System.Configuration.ConfigurationManager
                                       .ConnectionStrings["HomeConnectionString"]
                                       .ConnectionString;

        SqlConnection con = new SqlConnection(strConnString);

        string strQuery = "INSERT INTO ckEditor(ckedit, ckedit2) VALUES(@ckedit,@ckedit2)";

        SqlCommand cmd = new SqlCommand(strQuery);

        cmd.Parameters.AddWithValue("@ckedit", markup);
        cmd.Parameters.AddWithValue("@ckedit2", markup2);

        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        con.Open();
        cmd.ExecuteNonQuery();
    }
}