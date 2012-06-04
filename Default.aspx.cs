using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class Home : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {
        ////Dynamically apply iframe src
        //string iframeURL = "http://www.youtube.com/embed/rjCmLJtITK4";
        //productVideo.Attributes["src"] = iframeURL;


        //Literal li = new Literal();
        //li.Text = "<h1 color:red>Alice’s Adventures In Wonderland</h1>";
        //Panel1.Controls.Add(li);

        //Page.Controls.Add();
    }
    //protected void Button1_Click(object sender, EventArgs e)
    //{
        
    //    SqlConnection con = new SqlConnection();
    //    con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\TestH2h.mdf;Integrated Security=True;User Instance=True";
    //    con.Open();
    //    //Create new table in DataSet
    //    DataSet ds = new DataSet("html");
    //    SqlDataAdapter da = new SqlDataAdapter();
    //    SqlCommand cmd = new SqlCommand("Select markup from html", con);
    //    da.SelectCommand = cmd;

    //    //da.Fill(ds, "html");
    //    //DataTable dt = new DataTable();
    //    //dt = ds.Tables["html"];

    //    Content c1 = new Content();

    //    //Panel pR = new Panel();
    //    //pR.HorizontalAlign = HorizontalAlign.Right;
    //    //pR.Wrap = true;

    //    //pR.Height = 200;
    //    //pR.Width = 200;
    //    //pR.GroupingText = "<h1 color:red>Alice’s Adventures In Wonderland</h1>";
    //    //pR.BackColor = System.Drawing.Color.Gainsboro;

    //    //Label l = new Label();
    //    //l.Text = "This panel contains a right justified label.";
    //    //Controls.Add(l);
    //    //Controls.Add(pR);
    //}
}