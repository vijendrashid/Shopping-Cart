<%@ Page Title="" Language="C#" MasterPageFile="~/Admin Panel/Admin.master" AutoEventWireup="true"
    ValidateRequest="false" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="AdminPanelhead" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="AdminPanelMaster" runat="Server">
    <div>
        <asp:FormView ID="FormView1" runat="server" EnableModelValidation="True" DefaultMode="Insert"
            DataSourceID="SqlDataSource1">
            <InsertItemTemplate>
                <div>
                    <asp:Label ID="lbl_sku" runat="server" Text="SKU : "></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txtSku" runat="server" Text='<%# Bind("sku") %>' MaxLength="30"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lbl_pro_name" runat="server" Text="Product Title :"></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txt_pro_name" runat="server" Text='<%# Bind("prod_title") %>'
                        MaxLength="30"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblWeight" runat="server" Text="Weight : "></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txtWeight" runat="server" Text='<%# Bind("prod_weight_kgs") %>'></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblMetaKeywords" runat="server" Text="Meta Keywords(optional) : "></asp:Label>
                    <br />
                    <asp:TextBox ID="txtMetaKeywords" runat="server" Text='<%# Bind("meta_keywords_optional") %>'
                        MaxLength="298" Columns="40" Rows="5" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblMetaDescription" runat="server" Text="Meta Description : "></asp:Label>
                    <br />
                    <asp:TextBox ID="txtMetaDescription" runat="server" Text='<%# Bind("meta_description") %>'
                        MaxLength="298" Columns="40" Rows="4" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lblCategory" runat="server" Text="Category :"></asp:Label>
                    <asp:DropDownList ID="ddlCategory" runat="server" DataValueField='<%# Bind("category") %>'>
                        <asp:ListItem>Touch Screen</asp:ListItem>
                        <asp:ListItem>Qwerty</asp:ListItem>
                        <asp:ListItem>Tab</asp:ListItem>
                        <asp:ListItem>Accessories</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <br />
                    <asp:Label ID="lbl_brand" runat="server" Text="Brand :"></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txt_brand" runat="server" Text='<%# Bind("prod_brand") %>'
                        MaxLength="30"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lbl_colour" runat="server" Text="Colour :"></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txt_colour" runat="server" Text='<%# Bind("prod_color") %>'
                        MaxLength="20"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lbl_featr" runat="server" Text="Features :"></asp:Label>
                    <br />
                    <CKEditor:CKEditorControl ID="ckeditorFeatures" runat="server" Text='<%# Bind("prod_feature") %>'
                        Columns="40"></CKEditor:CKEditorControl>
                    <br />
                    <br />
                    <asp:Label ID="lbl_descp" runat="server" Text="Description :"></asp:Label>
                    <br />
                    <CKEditor:CKEditorControl ID="ckeditorDescription" runat="server" Text='<%# Bind("prod_description") %>'></CKEditor:CKEditorControl>
                    <br />
                    <br />
                    <asp:Label ID="lbl_price" runat="server" Text="Price :"></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txt_price" runat="server" Text='<%# Bind("o_price") %>'></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lbl_mrktprc" runat="server" Text="Market Price :"></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txt_mrktprc" runat="server" Text='<%# Bind("m_price") %>'></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lbl_Qty" runat="server" Text="Quantity :"></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txt_Qty" runat="server" Text='<%# Bind("stock") %>'></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="lbl_dlvrddays" runat="server" Text="Delivered Days :"></asp:Label>
                    &nbsp;&nbsp;<asp:TextBox ID="txt_dlvrddays" runat="server" Text='<%# Bind("days_delivered") %>'
                        MaxLength="2"></asp:TextBox>
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img1" runat="server" FileBytes='<%# Bind("prod_img1") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img2" runat="server" FileBytes='<%# Bind("prod_img2") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img3" runat="server" FileBytes='<%# Bind("prod_img3") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img4" runat="server" FileBytes='<%# Bind("prod_img4") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img5" runat="server" FileBytes='<%# Bind("prod_img5") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img6" runat="server" FileBytes='<%# Bind("prod_img6") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img7" runat="server" FileBytes='<%# Bind("prod_img7") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img8" runat="server" FileBytes='<%# Bind("prod_img8") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img9" runat="server" FileBytes='<%# Bind("prod_img9") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img10" runat="server" FileBytes='<%# Bind("prod_img10") %>' />
                    <br />
                    <br />
                    <asp:FileUpload ID="fupl_img11" runat="server" FileBytes='<%# Bind("prod_img11") %>' />
                    <br />
                    <br />
                </div>
                <div>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CommandName="Insert" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnReset" runat="server" Text="Reset" CommandName="Cancel" /></div>
                <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" />
                <br />
                <br />
            </InsertItemTemplate>
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:h2hConnectionString %>"
            SelectCommand="SELECT [Product_Details] ([sku], [prod_title], [prod_weight_kgs], [meta_keywords_optional], 
                            [meta_description], [category], [prod_brand], [prod_color], [prod_feature], [prod_description], [O_price], 
                            [m_price], [stock], [days_delivered], [prod_img1], [prod_img2], [prod_img3], [prod_img4], [prod_img5], 
                            [prod_img6], [prod_img7], [prod_img8], [prod_img9], [prod_img10], [prod_img11] FROM [Product_Details]"
            InsertCommand="INSERT INTO [Product_Details] ([sku], [prod_title], [prod_weight_kgs], [meta_keywords_optional], 
                            [meta_description], [category], [prod_brand], [prod_color], [prod_feature], [prod_description], [O_price], 
                            [m_price], [stock], [days_delivered], [prod_img1], [prod_img2], [prod_img3], [prod_img4], [prod_img5], 
                            [prod_img6], [prod_img7], [prod_img8], [prod_img9], [prod_img10], [prod_img11]) 
                            VALUES (@sku, @prod_title, @prod_weight_kgs, @meta_keywords_optional, @meta_description, @category, 
                            @prod_brand, @prod_color, @prod_feature, @prod_description, @O_price, @m_price, @stock, @days_delivered,
                            @prod_img1, @prod_img2, @prod_img3, @prod_img4, @prod_img5, @prod_img6, @prod_img7, @prod_img8, @prod_img9,
                            @prod_img10, @prod_img11)"></asp:SqlDataSource>
        <br />
    </div>
</asp:Content>
