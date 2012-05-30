<%@ Page Title="" Language="C#" MasterPageFile="~/Shoping.master" AutoEventWireup="true"
    CodeFile="starratings.aspx.cs" Inherits="starratings" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ShoppingMasterHead" runat="Server">
    <link href="CSS/default.css" rel="stylesheet" type="text/css" />
    <link href="CSS/opineo.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="javascripts/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="javascripts/opineo.js"></script>
    <script>

        $(document).ready(function () {

            $('#MiniView').opineo('results.php', { curvalue: 0, view: 'mini', callback: myCallback });

        })

        function myCallback(responseData) {
            var userRating = responseData.rating_label;
            if (userRating == '' || userRating == undefined) {
                userRating = 'None';
            }

            $('#UserVoteSpan').html(userRating);
        }
		
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div id="MiniView" style="width: 500px">
        </div>
</asp:Content>
