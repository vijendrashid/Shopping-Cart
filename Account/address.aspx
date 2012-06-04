<%@ Page Title="" Language="C#" MasterPageFile="~/childShopping.master" AutoEventWireup="true"
    CodeFile="address.aspx.cs" Inherits="Account_address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ChildMaster" runat="Server">
    <%-- <div class="lastUnit">
        <div class="line">--%>
    <div class="formStyle">
        <div class="line">
            <h1 class="ms1234-font-verybig">
                Add a New Address</h1>
        </div>
        <div class="line rw">
            <div class="unit size1of3">
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label></div>
            <div class="unit size1of3 lastUnit">
                <asp:TextBox ID="txtFullName" runat="server" AutoCompleteType="DisplayName"></asp:TextBox></div>
        </div>
        <div class="line">
            <div class="unit size1of3">
                <asp:Label ID="lblStreet" runat="server" Text="Address"></asp:Label></div>
            <div class="unit size1of3 lastUnit">
                <span class="lastUnit">
                    <asp:TextBox ID="txtAddress" runat="server" AutoCompleteType="HomeStreetAddress"
                        Rows="4" TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <small class="co_note">(Maximum Limit : 216 characters)</small></span></div>
        </div>
        <div class="line rw">
            <div class="unit size1of3">
                <asp:Label ID="lblLandmark" runat="server" Text="Landmark"></asp:Label>
            </div>
            <div class="unit size1of3 lastUnit">
                <asp:TextBox ID="txtLandmark" runat="server"></asp:TextBox></div>
        </div>
        <div class="line rw">
            <div class="unit size1of3">
                <asp:Label ID="City" runat="server" Text="City"></asp:Label></div>
            <div class="unit size1of3 lastUnit">
                <asp:TextBox ID="txtCity" runat="server"></asp:TextBox></div>
        </div>
        <div class="line rw">
            <div class="unit size1of3">
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label></div>
            <div class="unit size1of3 lastUnit">
                <asp:TextBox ID="txtState" runat="server"></asp:TextBox></div>
        </div>
        <div class="line">
            <div class="unit size1of3">
                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label></div>
            <div class="unit size1of3 lastUnit">
                <asp:TextBox ID="txtContryName" runat="server" Text="India" BorderStyle="None" 
                    Font-Size="Medium" Width="34px"></asp:TextBox><small
                    class="co_note" style="margin-left: 5px;">&nbsp;(Service available only in India)</small></div>
        </div>
        <div class="line rw">
            <div class="unit size1of3">
                <asp:Label ID="lblPin" runat="server" Text="Pincode"></asp:Label></div>
            <div class="unit size1of3 lastUnit">
                <asp:TextBox ID="txtPin" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="line rw">
            <div class="unit size1of3">
                <asp:Label ID="lblPNum" runat="server" Text="Phone number"></asp:Label></div>
            <div class="unit size1of3 lastUnit">
                <asp:TextBox ID="txtPNum" runat="server"></asp:TextBox></div>
        </div>
        <div class="line rw">
            <div class="unit size1of3">
            </div>
            <div class="unit size1of3 lastUnit">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </div>
        </div>
    </div>
</asp:Content>
