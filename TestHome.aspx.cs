using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class TestHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        String strConnString = System.Configuration.ConfigurationManager
                                        .ConnectionStrings["HomeConnectionString"]
                                        .ConnectionString;

        SqlConnection con = new SqlConnection(strConnString);

        string strQuery = "SELECT (id), (imagePath) FROM path";

        SqlCommand cmd = new SqlCommand(strQuery);

        SqlDataAdapter sda = new SqlDataAdapter();

        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;

        try
        {
            con.Open();
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
        finally
        {
            con.Close();
            sda.Dispose();
            con.Dispose();
        }

    }
}