<%@ Page Title=""
  Language="C#"
  MasterPageFile="~/childShopping.master"
  AutoEventWireup="true"
  CodeFile="checkout.aspx.cs"
  Inherits="Account_checkout" %>

<asp:Content ID="Content1"
  ContentPlaceHolderID="ChildMaster"
  runat="Server">
  <asp:Wizard ID="Wizard"
    runat="server"
    ActiveStepIndex="3"
    BackColor="#EFF3FB"
    BorderColor="White"
    BorderWidth="1px"
    Font-Names="Verdana"
    Width="600px"
    OnFinishButtonClick="Wizard_FinishButtonClick"
    OnActiveStepChanged="Wizard_ActiveStepChanged"
    DisplayCancelButton="True"
    
    OnCancelButtonClick="Wizard_CancelButtonClick">
    <NavigationButtonStyle
      BackColor="White"
      BorderColor="#F8F8F8"
      BorderStyle="Solid"
      BorderWidth="1px"
      Font-Names="Verdana"
      Font-Size="0.8em"
      ForeColor="#284E98" />
    <SideBarButtonStyle
      BackColor="#507CD1"
      Font-Names="Verdana"
      ForeColor="White" />
    <SideBarStyle BackColor="#507CD1"
      Font-Size="0.9em"
      VerticalAlign="Top" />
    <StepStyle Font-Size="0.8em"
      ForeColor="#333333" />
    <WizardSteps>
      <asp:WizardStep
        runat="server"
        Title="Step 1"
        ID="WizardStep1" StepType="Start">
        <asp:Panel ID="pnlShippingInformationAddress"
          runat="server"
          CssClass="formStyle">
          <div class="line">
            <h1 class="ms1234-font-verybig">
              Your Shipping Information
              Address
            </h1>
          </div>
          <div class="ms1234-font-small">
            <h5>
              All fields are
              required.</h5>
          </div>
          <div>
            <div class="unit size1of3">
              <asp:RadioButton
                ID="rblNewAddress"
                runat="server"
                AutoPostBack="True"
                Font-Bold="False"
                Font-Italic="True"
                Font-Overline="False"
                Font-Strikeout="False"
                Font-Underline="False"
                GroupName="Address"
                Text="New Address"
                OnCheckedChanged="rblNewAddress_CheckedChanged" /></div>
            <div class="unit size1of3 lastUnit">
              <asp:RadioButton
                ID="rblOldAddress"
                runat="server"
                AutoPostBack="True"
                Font-Bold="False"
                Font-Italic="True"
                GroupName="Address"
                Text="Default Address"
                OnCheckedChanged="rblOldAddress_CheckedChanged"
                Checked="True" /></div>
          </div>
          <div class="line rw">
            <div class="unit size1of3">
              <asp:Label ID="LabelName"
                runat="server"
                Text="Name :"
                Font-Bold="True"></asp:Label>
            </div>
            <div class="unit size1of3 lastUnit">
              <asp:TextBox ID="txtName"
                runat="server"
                Width="200px"></asp:TextBox>
            </div>
          </div>
          <div class="line rw">
            <div class="unit size1of3">
              <asp:Label ID="LabelAddress"
                runat="server"
                Text="Address :"
                Font-Bold="True"></asp:Label>
            </div>
            <div class="unit size1of3 lastUnit">
              <asp:TextBox ID="txtAddress"
                runat="server"
                Rows="5" TextMode="MultiLine"
                Columns="23"></asp:TextBox>
            </div>
          </div>
          <div class="line rw">
            <div class="unit size1of3">
              <asp:Label ID="LabelPinCode"
                runat="server"
                Text="Pincode :"
                Font-Bold="True"></asp:Label>
            </div>
            <div class="unit size1of3 lastUnit">
              <asp:TextBox ID="txtPincode"
                runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="line">
            <div class="unit size1of3">
              <asp:Label ID="LabelRcvPhNo"
                runat="server"
                Text="Reciever's Phone Number :"
                Font-Bold="True"></asp:Label>
            </div>
            <div class="unit size1of3 lastUnit">
              <asp:TextBox ID="txtRcvPhNo"
                runat="server"></asp:TextBox>
            </div>
          </div>
          <div class="line rw">
            <div class="unit size1of3">
              <asp:Label ID="LabelyEmailID"
                runat="server"
                Text="Your Email ID :"
                Font-Bold="True"></asp:Label>
            </div>
            <div class="unit size1of3 lastUnit">
              <asp:TextBox ID="txtYrEmailID"
                runat="server"
                Width="200px"></asp:TextBox>
            </div>
          </div>
        </asp:Panel>
      </asp:WizardStep>
      <asp:WizardStep
        runat="server"
        Title="Step 2"
        ID="WizardStep2" StepType="Step">
        <asp:UpdatePanel
          ID="UpdatePanel1"
          runat="server">
          <ContentTemplate>
            <asp:GridView ID="gvCart"
              runat="server"
              BackColor="White"
              BorderStyle="None"
              BorderWidth="1px"
              CellPadding="4"
              ForeColor="#323232"
              EnableModelValidation="True"
              Style="width: 380px;"
              OnRowDeleting="gvCart_RowDeleting"
              AutoGenerateColumns="False"
              OnDataBound="gvCart_DataBound"
              ShowFooter="True"
              OnRowDataBound="gvCart_RowDataBound"
              AlternatingRowStyle-Wrap="True">
              <AlternatingRowStyle
                Wrap="True" />
              <Columns>
                <asp:CommandField
                  DeleteImageUrl="~/images/deleteItem.png"
                  DeleteText="Delete Item"
                  ButtonType="Image"
                  ShowDeleteButton="true" />
                <asp:TemplateField
                  HeaderText="Item">
                  <ItemTemplate>
                    <asp:Image ID="imgItemPic"
                      runat="server"
                      ImageUrl='<%# Eval("ItemPic") %>'
                      Width="42" Height="75"
                      ImageAlign="Middle" />
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField
                  HeaderText="Type"
                  ControlStyle-Width="80">
                  <ItemTemplate>
                    <asp:Label ID="lblType"
                      runat="server"
                      Text='<%# Bind("Type") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Width="80px" />
                </asp:TemplateField>
                <asp:TemplateField
                  HeaderText="Item Description"
                  ControlStyle-Width="150">
                  <ItemTemplate>
                    <asp:Label ID="lblGvName"
                      runat="server"
                      Text='<%# Bind("Name") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Width="150px" />
                </asp:TemplateField>
                <asp:TemplateField
                  HeaderText="Price">
                  <ItemTemplate>
                    <asp:Label ID="lblPrice"
                      runat="server"
                      Text='<%# Bind("Price" ,"{0:N0}") %>'></asp:Label>
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField
                  HeaderText="Qty.">
                  <ItemTemplate>
                    <asp:Label ID="lblQuantity"
                      runat="server"
                      Text='<%# Bind("Quantity") %>'></asp:Label>
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField
                  HeaderText="Sub-Total"
                  ControlStyle-Width="60">
                  <FooterTemplate>
                    <asp:Label ID="lblSummary"
                      runat="server"></asp:Label>
                  </FooterTemplate>
                  <ItemTemplate>
                    <asp:Label ID="lblTotal"
                      runat="server"
                      Text='<%# Bind("Total" ,"{0:N0}") %>'></asp:Label>
                  </ItemTemplate>
                  <ControlStyle Width="60px" />
                </asp:TemplateField>
                <asp:TemplateField
                  SortExpression="mPrice"
                  Visible="False"
                  ShowHeader="False">
                  <FooterTemplate>
                    <asp:Label ID="lblMPSummary"
                      runat="server"></asp:Label>
                  </FooterTemplate>
                  <ItemTemplate>
                    <asp:Label ID="lblMPrice"
                      runat="server"
                      Text='<%# Bind("mPrice" ,"{0:N0}") %>'></asp:Label>
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField
                  SortExpression="daysDelivered"
                  Visible="False">
                  <ItemTemplate>
                    <asp:Label ID="lblDaysDelivered"
                      runat="server"
                      Text='<%# Bind("daysDelivered") %>'></asp:Label>
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField
                  SortExpression="discount"
                  Visible="False">
                  <ItemTemplate>
                    <asp:Label ID="lblDiscount"
                      runat="server"
                      Text='<%# Bind("discount") %>'></asp:Label>
                  </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField
                  SortExpression="prod_Id"
                  Visible="False">
                  <ItemTemplate>
                    <asp:Label ID="lblProd_Id"
                      runat="server"
                      Text='<%# Bind("prod_Id") %>'></asp:Label>
                  </ItemTemplate>
                </asp:TemplateField>
              </Columns>
              <FooterStyle Font-Size="13px"
                BorderColor="#F2F2F2"
                BorderStyle="None"
                BackColor="White"
                ForeColor="#323232"
                Height="10px" />
              <HeaderStyle BackColor="#F2F2F2"
                Font-Bold="True"
                ForeColor="#5C5C5D"
                Font-Size="11px"
                BorderColor="#F2F2F2"
                BorderStyle="Solid"
                BorderWidth="1px" />
              <PagerStyle BackColor="#99CCCC"
                ForeColor="#323232"
                HorizontalAlign="Left" />
              <RowStyle BackColor="White"
                ForeColor="#323232"
                Height="10px"
                Font-Size="13px"
                BorderColor="#F2F2F2"
                BorderStyle="Solid"
                BorderWidth="1px" />
              <SelectedRowStyle
                BackColor="#009999"
                Font-Bold="True"
                ForeColor="#323232" />
            </asp:GridView>
          </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
      </asp:WizardStep>
      <asp:WizardStep
        runat="server"
        Title="Step 3"
        ID="WizardStep3"
        StepType="Finish">
        <asp:Panel ID="pnlDetailsOrder"
          runat="server">
          <div class="formStyle">
            <div class="line">
              <h1 class="ms1234-font-verybig">
                Details of you
                order
              </h1>
            </div>
            <div class="line rw">
              <div class="unit size1of3"
                style="height: 150px">
                <asp:Label ID="LabelTitle"
                  runat="server"
                  Text="Title :"
                  Font-Bold="True"></asp:Label>
              </div>
              <div class="unit size1of3 lastUnit"
                style="line-height: normal;">
                <asp:Label ID="lblTitle"
                  runat="server"
                  Font-Size="Small"
                  Font-Bold="True"
                  ForeColor="Gray"></asp:Label>
              </div>
            </div>
            <div class="line rw">
              <div class="unit size1of3">
                <asp:Label ID="LabelDelivery"
                  runat="server"
                  Text="Delivery :"
                  Font-Bold="True"></asp:Label>
              </div>
              <div class="unit size1of3 lastUnit">
                <asp:Label ID="lblDelivery"
                  runat="server"
                  Font-Size="Small"
                  Font-Bold="True"
                  ForeColor="Gray"></asp:Label>
              </div>
            </div>
            <div class="line rw">
              <div class="unit size1of3">
                <asp:Label ID="LabelPrice"
                  runat="server"
                  Text="Market Price :"
                  Font-Bold="True"></asp:Label>
              </div>
              <div class="unit size1of3 lastUnit">
                <asp:Label ID="lblMarketPrice"
                  runat="server"
                  Font-Size="Small"
                  Font-Bold="True"
                  ForeColor="Gray"
                  Visible="true"></asp:Label>
              </div>
            </div>
            <div class="line rw">
              <div class="unit size1of3">
                <asp:Label ID="LabelDiscount"
                  runat="server"
                  Text="Discount :"
                  Font-Bold="True"></asp:Label>
              </div>
              <div class="unit size1of3 lastUnit">
                <asp:Label ID="lblDiscount"
                  runat="server"
                  Font-Size="Small"
                  Font-Bold="True"
                  ForeColor="Gray"></asp:Label>
              </div>
            </div>
            <div class="line rw">
              <div class="unit size1of3">
                <asp:Label ID="LabelPayable"
                  runat="server"
                  Text="Payable :"
                  Font-Bold="True"></asp:Label>
              </div>
              <div class="unit size1of3 lastUnit">
                <asp:Label ID="lblPayable"
                  runat="server"
                  Font-Size="Small"
                  Font-Bold="True"
                  ForeColor="Gray"></asp:Label>
              </div>
            </div>
            <%--<div class="line rw">
                <div class="unit size1of3">
                </div>
                <div class="unit size1of3 lastUnit">
                  <asp:Button ID="Button1" runat="server" Text="Button" />
                </div>
              </div>--%>
          </div>
        </asp:Panel>
      </asp:WizardStep>
      <asp:WizardStep
        ID="thankyou"
        runat="server"
        Title="Thank you"
        StepType="Complete">
        <br />
        <asp:Label ID="lblThankyou"
          runat="server"
          Font-Bold="True"
          Font-Size="Large"
          ForeColor="#009933"
          Text="Thank you for  your Order!!"
          Visible="False"></asp:Label>
        <asp:Label ID="lblConfirmO"
          runat="server"
          Font-Bold="True"
          Font-Size="Medium"
          ForeColor="#0066CC"
          Text="Please, Confirm your order."></asp:Label>
        <br />
        <br />
        <asp:Literal ID="ltlThankOrder"
          runat="server"
          Text="Your order is currently pending verification.  One of our executives will call you shorlty to cinfirm the same."
          Visible="False"></asp:Literal>
        <br />
        <asp:Panel ID="pnlOrderconfirm"
          runat="server"
          Visible="False"
          CssClass="formStyle">
          <div class="line rw">
            <div class="unit size1of3">
              <asp:Label ID="LabelOrderId"
                runat="server"
                Text="Order ID: "></asp:Label></div>
            <div class="unit size1of3 lastUnit">
              <asp:Label ID="lblOrderID"
                runat="server"></asp:Label>
            </div>
          </div>
          <div class="line rw">
            <div class="unit size1of3">
              <asp:Label ID="LabelOrderPlaced"
                runat="server"
                Text="Order Placed"></asp:Label>
            </div>
            <div class="unit size1of3 lastUnit">
              <asp:Label ID="lblOrderPlaced"
                runat="server"></asp:Label>
            </div>
          </div>
          <div class="line rw">
            <div class="unit size1of3">
            </div>
            <div class="unit size1of3 lastUnit">
            </div>
          </div>
        </asp:Panel>
        <br />
        <br />
      </asp:WizardStep>
    </WizardSteps>
  </asp:Wizard>
  <p>
    &nbsp;</p>
</asp:Content>
