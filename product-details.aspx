<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/Shoping.master"
  AutoEventWireup="true"
  CodeFile="product-details.aspx.cs"
  Inherits="product_details" %>

<%@ Register Assembly="AjaxControlToolkit"
  Namespace="AjaxControlToolkit"
  TagPrefix="asp" %>
<asp:Content ID="head"
  ContentPlaceHolderID="ShoppingMasterHead"
  runat="Server">
  <script type="text/javascript"
    src="javascripts/jquery.js"></script>
  <script type="text/javascript"
    src="javascripts/jquery.lightbox-0.5.js"></script>
  <link rel="stylesheet"
    type="text/css"
    href="CSS/jquery.lightbox-0.5.css"
    media="screen" />
  <link rel="stylesheet"
    type="text/css"
    href="CSS/buybutton.css" />
  <!-- Ativando o jQuery lightBox plugin -->
  <script type="text/javascript">
    $(function () {
      $('#gallery a').lightBox();

    });

    Sys.Application.add_load(function () {
      $find("RatingBhvrId1").add_EndClientCallback(function (sender, e) {
        var lblCtrl = document.getElementById('lblResponse');
        lblCtrl.innerHTML = e.get_CallbackResult();
      });
    });
  </script>
  <style type="text/css">
    /* jQuery lightBox plugin - Gallery style */
    #gallery
    {
      background-color: #FAFDFA;
      padding: 10px;
      width: auto;
    }
    #gallery ul
    {
      list-style: none;
    }
    #gallery ul li
    {
      display: inline;
    }
    #gallery ul img
    {
      border: 5px solid #3e3e3e;
      border-width: 5px 5px 20px;
    }
    #gallery ul a:hover img
    {
      border: 5px solid #fff;
      border-width: 5px 5px 20px;
      color: #fff;
    }
    #gallery ul a:hover
    {
      color: #fff;
    }
  </style>
</asp:Content>
<asp:Content ID="productDetailsBody"
  ContentPlaceHolderID="ContentPlaceHolder1"
  runat="Server">
  <asp:SqlDataSource
    ID="DetailsSql"
    runat="server"
    ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
    SelectCommand="SELECT [prod_id], [category], [prod_color], [prod_title], [prod_features], [O_price], [m_price], [stock], [days_delivered], [prod_img1], [discount_percent], [prod_description] FROM [Product_Details] WHERE [prod_id] = @prod_id"
    EnableCaching="True">
    <SelectParameters>
      <asp:QueryStringParameter
        Name="prod_id"
        QueryStringField="prod_id" />
    </SelectParameters>
  </asp:SqlDataSource>
  <div id="gallery">
    <ul id="ul1" runat="server">
    </ul>
  </div>
  <asp:ListView ID="DetailsListView"
    runat="server"
    DataKeyNames="prod_id"
    DataSourceID="DetailsSql"
    EnableModelValidation="True"
    OnItemDataBound="DetailsListView_ItemDataBound">
    <EmptyDataTemplate>
      <span>No data was
        returned.</span>
    </EmptyDataTemplate>
    <ItemTemplate>
      <div style="color: #333;
        line-height: 35px;
        margin: 0 200px 0 50px;">
        <div style="display: block;
          text-align: left;">
          <h1 style="display: inline;">
            <asp:Label ID="lblProdTitle"
              runat="server"
              Text='<%# Eval("prod_title") %>'></asp:Label></h1>
          <span>(<%# Eval("prod_color")%>)</span>
        </div>
        <div style="display: inline-block;">
          <asp:UpdatePanel
            ID="UpdatePanel1"
            runat="server">
            <ContentTemplate>
              <div>
                <asp:Rating ID="likeRating"
                  BehaviorID="RatingBhvrId1"
                  runat="server"
                  CurrentRating="3"
                  MaxRating="5"
                  StarCssClass="ratingStar"
                  WaitingStarCssClass="savedRatingStar"
                  FilledStarCssClass="filledRatingStar"
                  EmptyStarCssClass="emptyRatingStar"
                  OnChanged="likeRating_Changed"
                  Style="float: left;">
                </asp:Rating>
              </div>
              <span id="lblResponse">
              </span>
            </ContentTemplate>
          </asp:UpdatePanel>
        </div>
        <div style="display: block;
          text-align: left;">
          <div style="display: inline;
            color: Gray;">
            <span>Price : </span>
          </div>
          <span style="text-decoration: line-through;">
            Rs.
            <%# Eval("m_price", "{0:##}") %></span>
          <span id="pricecolor"
            style="color: Red;
            font-size: 24px;">
            Rs.
            <asp:Label ID="lblOurPrice"
              runat="server"
              Text='<%# Eval("O_price", "{0:##}") %>'></asp:Label>
          </span></span>
        </div>
        <div style="display: block;
          text-align: left;">
          <span style="display: inline;
            color: Gray;">Discount
            : </span><span style="font-size: 25px;">
              <%# Eval("discount_percent", "{0:N2}") %>
              %</span></div>
        <div style="display: block;
          text-align: left;">
          <span style="display: inline-table;
            color: Gray;">Features
            : </span><span>
              <%# Eval("prod_features") %></span>
        </div>
        <div style="display: inline-block;">
          <asp:Button ID="addToCart1"
            CssClass="buybtn"
            runat="server"
            Text="Buy Now"
            OnClick="addToCart1_Click" /></div>
        <%--<span style="display: inline-block; text-align: left;"><a href="#" class="buybtn"><span
          class="buybtn-text">Buy Now</span> <span class="buybtn-hidden-text">Rs.<%# Eval("O_price", "{0:##}") %></span><span
            class="buybtn-image"><span></span></span></a></span>--%>
        <div style="display: block;
          text-align: left;">
          <span style="display: inline;
            font-size: 20px;">
            Description :
          </span><span>
            <%# Eval("prod_description") %></span>
        </div>
      </div>
    </ItemTemplate>
    <LayoutTemplate>
      <div id="itemPlaceholderContainer"
        runat="server"
        style="">
        <span runat="server"
          id="itemPlaceholder" />
      </div>
      <div style="">
      </div>
    </LayoutTemplate>
  </asp:ListView>
  <br />
  <br />
  <asp:Panel ID="Panel1"
    runat="server"
    Visible="false">
    <asp:Label ID="lblComments"
      Text="Comments:"
      AssociatedControlID="txtComment"
      runat="server" />
    <br />
    <asp:TextBox ID="txtComment"
      Text='<%# Bind("Comment") %>'
      TextMode="MultiLine"
      Columns="40" Rows="3"
      runat="server" />
    <br />
    <asp:Button ID="lnkInsert"
      Text="Add Comment"
      CommandName="Insert"
      runat="server" /></asp:Panel>
</asp:Content>