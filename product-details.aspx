<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="product-details.aspx.cs" Inherits="product_details" %>

<asp:Content ID="head" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="homeSql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [prod_title], [prod_features], [O_price], [prod_img1], [discount_percent], [prod_description] FROM [Product_Details] WHERE [prod_id] = @prod_id">
        <SelectParameters>
            <asp:QueryStringParameter Name="prod_id" QueryStringField="prod_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="prod_id" 
        DataSourceID="homeSql" EnableModelValidation="True">
        <AlternatingItemTemplate>
            <span style="">prod_id:
            <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' />
            <br />
            prod_title:
            <asp:Label ID="prod_titleLabel" runat="server" 
                Text='<%# Eval("prod_title") %>' />
            <br />
            prod_features:
            <asp:Label ID="prod_featuresLabel" runat="server" 
                Text='<%# Eval("prod_features") %>' />
            <br />
            O_price:
            <asp:Label ID="O_priceLabel" runat="server" Text='<%# Eval("O_price") %>' />
            <br />
            prod_img1:
            <asp:Label ID="prod_img1Label" runat="server" Text='<%# Eval("prod_img1") %>' />
            <br />
            discount_percent:
            <asp:Label ID="discount_percentLabel" runat="server" 
                Text='<%# Eval("discount_percent") %>' />
            <br />
            prod_description:
            <asp:Label ID="prod_descriptionLabel" runat="server" 
                Text='<%# Eval("prod_description") %>' />
            <br />
<br /></span>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="">prod_id:
            <asp:Label ID="prod_idLabel1" runat="server" Text='<%# Eval("prod_id") %>' />
            <br />
            prod_title:
            <asp:TextBox ID="prod_titleTextBox" runat="server" 
                Text='<%# Bind("prod_title") %>' />
            <br />
            prod_features:
            <asp:TextBox ID="prod_featuresTextBox" runat="server" 
                Text='<%# Bind("prod_features") %>' />
            <br />
            O_price:
            <asp:TextBox ID="O_priceTextBox" runat="server" Text='<%# Bind("O_price") %>' />
            <br />
            prod_img1:
            <asp:TextBox ID="prod_img1TextBox" runat="server" 
                Text='<%# Bind("prod_img1") %>' />
            <br />
            discount_percent:
            <asp:TextBox ID="discount_percentTextBox" runat="server" 
                Text='<%# Bind("discount_percent") %>' />
            <br />
            prod_description:
            <asp:TextBox ID="prod_descriptionTextBox" runat="server" 
                Text='<%# Bind("prod_description") %>' />
            <br />
            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                Text="Update" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Cancel" />
            <br /><br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>No data was returned.</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <span style="">prod_title:
            <asp:TextBox ID="prod_titleTextBox" runat="server" 
                Text='<%# Bind("prod_title") %>' />
            <br />prod_features:
            <asp:TextBox ID="prod_featuresTextBox" runat="server" 
                Text='<%# Bind("prod_features") %>' />
            <br />O_price:
            <asp:TextBox ID="O_priceTextBox" runat="server" Text='<%# Bind("O_price") %>' />
            <br />prod_img1:
            <asp:TextBox ID="prod_img1TextBox" runat="server" 
                Text='<%# Bind("prod_img1") %>' />
            <br />discount_percent:
            <asp:TextBox ID="discount_percentTextBox" runat="server" 
                Text='<%# Bind("discount_percent") %>' />
            <br />prod_description:
            <asp:TextBox ID="prod_descriptionTextBox" runat="server" 
                Text='<%# Bind("prod_description") %>' />
            <br />
            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                Text="Insert" />
            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                Text="Clear" />
            <br /><br /></span>
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="">prod_id:
            <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' />
            <br />
            prod_title:
            <asp:Label ID="prod_titleLabel" runat="server" 
                Text='<%# Eval("prod_title") %>' />
            <br />
            prod_features:
            <asp:Label ID="prod_featuresLabel" runat="server" 
                Text='<%# Eval("prod_features") %>' />
            <br />
            O_price:
            <asp:Label ID="O_priceLabel" runat="server" Text='<%# Eval("O_price") %>' />
            <br />
            prod_img1:
            <asp:Label ID="prod_img1Label" runat="server" Text='<%# Eval("prod_img1") %>' />
            <br />
            discount_percent:
            <asp:Label ID="discount_percentLabel" runat="server" 
                Text='<%# Eval("discount_percent") %>' />
            <br />
            prod_description:
            <asp:Label ID="prod_descriptionLabel" runat="server" 
                Text='<%# Eval("prod_description") %>' />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div ID="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <span style="">prod_id:
            <asp:Label ID="prod_idLabel" runat="server" Text='<%# Eval("prod_id") %>' />
            <br />
            prod_title:
            <asp:Label ID="prod_titleLabel" runat="server" 
                Text='<%# Eval("prod_title") %>' />
            <br />
            prod_features:
            <asp:Label ID="prod_featuresLabel" runat="server" 
                Text='<%# Eval("prod_features") %>' />
            <br />
            O_price:
            <asp:Label ID="O_priceLabel" runat="server" Text='<%# Eval("O_price") %>' />
            <br />
            prod_img1:
            <asp:Label ID="prod_img1Label" runat="server" Text='<%# Eval("prod_img1") %>' />
            <br />
            discount_percent:
            <asp:Label ID="discount_percentLabel" runat="server" 
                Text='<%# Eval("discount_percent") %>' />
            <br />
            prod_description:
            <asp:Label ID="prod_descriptionLabel" runat="server" 
                Text='<%# Eval("prod_description") %>' />
            <br />
<br /></span>
        </SelectedItemTemplate>
    </asp:ListView>
    <br />
    </asp:Content>
