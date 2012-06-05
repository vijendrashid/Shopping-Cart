﻿<%@ Page Title=""
	Language="C#"
	MasterPageFile="~/childShopping.master"
	AutoEventWireup="true" %>

<asp:Content ID="content1"
	ContentPlaceHolderID="ChildMaster"
	runat="server">
	<h3>
		Change Password
	</h3>
	<div>
		<asp:ChangePassword
			ID="ChangePassword1"
			runat="server">
			<ChangePasswordTemplate>
				<table cellpadding="1"
					cellspacing="0"
					style="border-collapse: collapse;">
					<tr>
						<td>
							<table cellpadding="0">
								<tr>
									<td align="center"
										colspan="2">
										Change Your Password
									</td>
								</tr>
								<tr>
									<td align="right">
										<asp:Label ID="CurrentPasswordLabel"
											runat="server"
											AssociatedControlID="CurrentPassword">Password:</asp:Label>
									</td>
									<td>
										<asp:TextBox ID="CurrentPassword"
											runat="server"
											TextMode="Password"></asp:TextBox>
										<asp:RequiredFieldValidator
											ID="CurrentPasswordRequired"
											runat="server"
											ControlToValidate="CurrentPassword"
											ErrorMessage="Password is required."
											ToolTip="Password is required."
											ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td align="right">
										<asp:Label ID="NewPasswordLabel"
											runat="server"
											AssociatedControlID="NewPassword">New Password:</asp:Label>
									</td>
									<td>
										<asp:TextBox ID="NewPassword"
											runat="server"
											TextMode="Password"></asp:TextBox>
										<asp:RequiredFieldValidator
											ID="NewPasswordRequired"
											runat="server"
											ControlToValidate="NewPassword"
											ErrorMessage="New Password is required."
											ToolTip="New Password is required."
											ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td align="right">
										<asp:Label ID="ConfirmNewPasswordLabel"
											runat="server"
											AssociatedControlID="ConfirmNewPassword">Confirm New Password:</asp:Label>
									</td>
									<td>
										<asp:TextBox ID="ConfirmNewPassword"
											runat="server"
											TextMode="Password"></asp:TextBox>
										<asp:RequiredFieldValidator
											ID="ConfirmNewPasswordRequired"
											runat="server"
											ControlToValidate="ConfirmNewPassword"
											ErrorMessage="Confirm New Password is required."
											ToolTip="Confirm New Password is required."
											ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
									</td>
								</tr>
								<tr>
									<td align="center"
										colspan="2">
										<asp:CompareValidator
											ID="NewPasswordCompare"
											runat="server"
											ControlToCompare="NewPassword"
											ControlToValidate="ConfirmNewPassword"
											Display="Dynamic"
											ErrorMessage="The Confirm New Password must match the New Password entry."
											ValidationGroup="ChangePassword1"></asp:CompareValidator>
									</td>
								</tr>
								<tr>
									<td align="center"
										colspan="2"
										style="color: Red;">
										<asp:Literal ID="FailureText"
											runat="server"
											EnableViewState="False"></asp:Literal>
									</td>
								</tr>
								<tr>
									<td align="right">
										<asp:Button ID="ChangePasswordPushButton"
											runat="server"
											CommandName="ChangePassword"
											Text="Change Password"
											ValidationGroup="ChangePassword1" />
									</td>
									<td>
										<asp:Button ID="CancelPushButton"
											runat="server"
											CausesValidation="False"
											CommandName="Cancel"
											Text="Cancel" />
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
			</ChangePasswordTemplate>
		</asp:ChangePassword>
	</div>
</asp:Content>
