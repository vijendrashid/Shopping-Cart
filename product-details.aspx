<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="product-details.aspx.cs" Inherits="product_details" %>

<asp:Content ID="head" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
</asp:Content>
<asp:Content ID="Body" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:SqlDataSource ID="homeSql" runat="server" ConnectionString="<%$ ConnectionStrings:HomeConnectionString %>"
        SelectCommand="SELECT [prod_id], [prod_title], [prod_features], [O_price], [prod_img1], [discount_percent], [prod_description] FROM [Product_Details] WHERE [prod_id] = @prod_id">
        <SelectParameters>
            <asp:QueryStringParameter
                Name="prod_id"
                QueryStringField="prod_id" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"
        AutoGenerateRows="False" DataKeyNames="prod_id" DataSourceID="homeSql" 
        EnableModelValidation="True">
        <Fields>
            <asp:BoundField DataField="prod_id" HeaderText="prod_id" InsertVisible="False" ReadOnly="True"
                SortExpression="prod_id" />
            <asp:BoundField DataField="prod_title" HeaderText="prod_title" SortExpression="prod_title" />
            <asp:TemplateField HeaderText="prod_features" SortExpression="prod_features">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("prod_features") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("prod_features") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("prod_features") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="O_price" HeaderText="O_price" SortExpression="O_price" />
            <asp:BoundField DataField="prod_img1" HeaderText="prod_img1" SortExpression="prod_img1" />
            <asp:BoundField DataField="discount_percent" HeaderText="discount_percent" ReadOnly="True"
                SortExpression="discount_percent" />
            <asp:TemplateField HeaderText="prod_description" 
                SortExpression="prod_description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" 
                        Text='<%# Bind("prod_description") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" 
                        Text='<%# Bind("prod_description") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("prod_description") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Fields>
    </asp:DetailsView>
</asp:Content>
