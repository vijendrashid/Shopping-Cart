﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Profile;

public partial class Account_checkout : System.Web.UI.Page
{

    void Page_PreRender()
    {

        gvCart.DataSource = Profile.ShoppingCart.Items;
        gvCart.DataBind();

    }
    protected void Page_Load(object sender, EventArgs e)
    {


    }
    protected void btnConfirmOrder_Click(object sender, EventArgs e)
    {

        //MembershipUser user;
        //user = Membership.GetUser(Page.User.Identity.Name);
        //string emailID = user.Email;
        //decimal price;
        //string itemPic;
        //string type;
        //int quantities;
        //decimal total;
        //string strQuery;


        //for(int i=0; i < Profile.ShoppingCart.Items.Count; i++)
        //{
        //    strQuery = "INSERT INTO Order_details (";

        //}


        //string titles;
        //string name = "";
        //for (int r = 0; r < gvCart.Rows.Count; r++)
        //{

        //    titles = gvCart.Rows[r].Cells[0].Text;
        //    Response.Write(titles);
        //    for (int c = 1; c <= GridView1.Rows[r].Cells.Count; c++)
        //    {
        //        titles = GridView1.Rows[r].Cells[c].Text;
        //        name = name + " " + titles;
        //        c++;
        //    }

        //}
        //string name = GridView1.Rows[0].Cells[0].Text;
        //decimal totalprice = decimal.Parse(GridView1.Rows[0].Cells[1].Text);
    }

    protected void gvCart_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        if (gvCart.Rows.Count >= 0)
            Profile.ShoppingCart.Items.RemoveAt(e.RowIndex);
    }
    protected void Wizard_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        // Process the order
        int order_no = 548470;
        string phone_number = txtRcvPhNo.Text;
        string shipping_address = txtName.Text + "<br/>"
                                + Profile.Address.StreetAddress + "<br/>"
                                + Profile.Address.Landmark + "<br/>"
                                + Profile.Address.City + "<br/>"
                                + Profile.Address.State + "<br/>"
                                + Profile.Address.Country + "<br/>"
                                + txtPincode.Text;

        String strConnString = System.Configuration.ConfigurationManager
                               .ConnectionStrings["HomeConnectionString"]
                               .ConnectionString;

        SqlConnection con = new SqlConnection(strConnString);

        // Insert Statement
        string strQuery = "INSERT INTO Order_details (email_id, prod_id, order_no,"
                        + "category, products_title, O_price,  "
                        + "quantities, phone_number, "
                        + "shipping_address) VALUES (@email_id, @prod_id, "
                        + "@order_no, @category, @products_title, @O_price, "
                        + "@quantities, "
                        + "@phone_number, @shipping_address)";

        foreach (GridViewRow row in gvCart.Rows)
        {
            SqlCommand cmd = new SqlCommand(strQuery);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            con.Open();
            if (row.RowType == DataControlRowType.DataRow)
            {
                Label lblGvName = (Label)row.Cells[0].FindControl("lblGvName");
                Label lblProd_Id = (Label)row.Cells[0].FindControl("lblProd_Id");
                Label lblType = (Label)row.Cells[0].FindControl("lblType");
                Label lblPrice = (Label)row.Cells[0].FindControl("lblPrice");
                Label lblQuantity = (Label)row.Cells[0].FindControl("lblQuantity");
                // Parameteres to pass with the strQuery
                cmd.Parameters.AddWithValue("@email_id", txtYrEmailID.Text);
                cmd.Parameters.AddWithValue("@prod_Id", lblProd_Id.Text);
                cmd.Parameters.AddWithValue("@order_no", order_no);
                cmd.Parameters.AddWithValue("@category", lblType.Text);
                cmd.Parameters.AddWithValue("@products_title", lblGvName.Text);
                cmd.Parameters.AddWithValue("@O_price", lblPrice.Text);
                cmd.Parameters.AddWithValue("@quantities", lblQuantity.Text);
                cmd.Parameters.AddWithValue("@phone_number", phone_number);
                cmd.Parameters.AddWithValue("@shipping_address", shipping_address);

                // Execute the order
                cmd.ExecuteNonQuery();
                // Clear th parameteres to avoid error; value must be unique
                cmd.Parameters.Clear();
                con.Close();

                Profile.ShoppingCart.Items.RemoveAt(row.DataItemIndex);
            }
        }

        //ProfileManager.DeleteProfile(User.Identity.Name);


        // Profile.SetPropertyValue("ShoppingCart", null);
    }

    protected void rblOldAddress_CheckedChanged(object sender, EventArgs e)
    {
        //MembershipUser user;
        //user = Membership.GetUser(Page.User.Identity.Name);
        //string emailID = user.Email;

        txtName.Text = Profile.Address.FullName;
        txtAddress.Text = Profile.Address.StreetAddress + "\r\n"
                        + Profile.Address.Landmark + "\r\n"
                        + Profile.Address.City + "\r\n"
                        + Profile.Address.State + "\r\n"
                        + Profile.Address.Country;

        txtPincode.Text = Profile.Address.Pincode;
        txtRcvPhNo.Text = Profile.Address.PhoneNumber;
        txtYrEmailID.Text = Profile.PersonalInformation.EmailID;
    }

    protected void rblNewAddress_CheckedChanged(object sender, EventArgs e)
    {
        txtName.Text = null;
        txtAddress.Text = null;
        txtPincode.Text = null;
        txtRcvPhNo.Text = null;
    }

    protected void gvCart_DataBound(object sender, EventArgs e)
    {

        lblTitle.Text = string.Empty;
        lblDelivery.Text = string.Empty;
        lblMSPrice.Text = string.Empty;

        foreach (GridViewRow row in gvCart.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                Label Title = (Label)row.Cells[0].FindControl("lblGvName");
                Label Delivery = (Label)row.Cells[0].FindControl("lblDaysDelivered");
                lblTitle.Text += Title.Text + "<br/>";
                lblDelivery.Text = Delivery.Text;
            }
        }

    }

    decimal _total;
    decimal _mTotal;
    //private int _daysDelivered = 0;
    //private decimal _discount = 0;

    protected void gvCart_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            decimal total = (decimal)DataBinder.Eval(e.Row.DataItem, "Total");
            _total += total;
            decimal mTotal = (decimal)DataBinder.Eval(e.Row.DataItem, "mPrice");
            _mTotal += mTotal;
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lblSummary = (Label)e.Row.FindControl("lblSummary");
            lblSummary.Text = String.Format("{0:N0}", _total);
            //Get Value for Wizrd 3 Payable Label
            lblPayable.Text = lblSummary.Text;

            Label lblMPSummary = (Label)e.Row.FindControl("lblMPSummary");
            lblMPSummary.Text = String.Format("{0:N0}", _mTotal);
            lblMSPrice.Text = _mTotal.ToString();
        }
        decimal discount = _mTotal - _total;
        lblDiscount.Text = string.Format("{0:N0}", discount);
    }
}