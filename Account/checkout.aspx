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
		ActiveStepIndex="0"
		BackColor="#EFF3FB"
		BorderColor="#FFFFFF"
		BorderWidth="1px"
		Font-Names="Verdana"
		Width="450px"
		FinishDestinationPageUrl="~/Account/Thankyou.aspx"
		
		OnFinishButtonClick="Wizard_FinishButtonClick">
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
				ID="WizardStep1">
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
								OnCheckedChanged="rblNewAddress_CheckedChanged"
								Checked="True" /></div>
						<div class="unit size1of3 lastUnit">
							<asp:RadioButton
								ID="rblOldAddress"
								runat="server"
								AutoPostBack="True"
								Font-Bold="False"
								Font-Italic="True"
								GroupName="Address"
								Text="Default Address"
								OnCheckedChanged="rblOldAddress_CheckedChanged" /></div>
					</div>
					<div class="line rw">
						<div class="unit size1of3">
							<asp:Label ID="LabelName"
								runat="server"
								Text="Name :"></asp:Label>
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
								Text="Address :"></asp:Label>
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
								Text="Pincode :"></asp:Label>
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
								Text="Reciever's Phone Number :"></asp:Label>
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
								Text="Your Email ID :"></asp:Label>
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
				ID="WizardStep2">
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
							AutoGenerateColumns="false">
							<Columns>
								<asp:CommandField
									DeleteImageUrl="~/images/deleteItem.png"
									DeleteText="Delete Item"
									ButtonType="Image"
									ShowDeleteButton="true" />
								<asp:ImageField
									HeaderText="Item"
									DataImageUrlField="ItemPic"
									ControlStyle-Height="75px"
									ControlStyle-Width="42px" />
								<asp:BoundField
									HeaderText="Type"
									DataField="Type" />
								<asp:BoundField
									HeaderText="Item Description"
									DataField="Name" />
								<asp:BoundField
									HeaderText="Price"
									DataField="Price" />
								<asp:BoundField
									HeaderText="Quantity"
									DataField="Quantity"
									ApplyFormatInEditMode="true" />
								<asp:BoundField
									HeaderText="Sub-Total"
									DataField="Total" />
							</Columns>
							<FooterStyle BackColor="#99CCCC"
								ForeColor="#003399" />
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
				ID="WizardStep3">
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
							<div class="unit size1of3">
								<asp:Label ID="Label9"
									runat="server"
									Text="Title :"></asp:Label>
							</div>
							<div class="unit size1of3 lastUnit">
								<asp:Label ID="Label10"
									runat="server"
									Text="Label"></asp:Label>
							</div>
						</div>
						<div class="line rw">
							<div class="unit size1of3">
								<asp:Label ID="Label11"
									runat="server"
									Text="Delivery :"></asp:Label>
							</div>
							<div class="unit size1of3 lastUnit">
								<asp:Label ID="Label12"
									runat="server"
									Text="Label"></asp:Label>
							</div>
						</div>
						<div class="line rw">
							<div class="unit size1of3">
								<asp:Label ID="Label13"
									runat="server"
									Text="Price :"></asp:Label>
							</div>
							<div class="unit size1of3 lastUnit">
								<asp:Label ID="Label14"
									runat="server"
									Text="Label"></asp:Label>
							</div>
						</div>
						<div class="line rw">
							<div class="unit size1of3">
								<asp:Label ID="Label15"
									runat="server"
									Text="Discount :"></asp:Label>
							</div>
							<div class="unit size1of3 lastUnit">
								<asp:Label ID="Label16"
									runat="server"
									Text="Label"></asp:Label>
							</div>
						</div>
						<div class="line rw">
							<div class="unit size1of3">
								<asp:Label ID="Label17"
									runat="server"
									Text="Payable :"></asp:Label>
							</div>
							<div class="unit size1of3 lastUnit">
								<asp:Label ID="Label18"
									runat="server"
									Text="Label"></asp:Label>
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
		</WizardSteps>
	</asp:Wizard>
	<p>
	</p>
	<div>
		<asp:Button ID="btnConfirmOrder"
			runat="server"
			Text="Confirm Order"
			OnClick="btnConfirmOrder_Click" /></div>
</asp:Content>
