using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void likeRating_Changed(object sender, AjaxControlToolkit.RatingEventArgs e)
    {
        //e.CallbackResult = "Upate done. Value = " + e.Value + " Tag = " + e.Tag;
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
}