<%-- _lcid="1033" _version="16.0.4524" _dal="1" --%>
<%-- _LocalBinding --%>

<%@ Page Language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage,Microsoft.SharePoint,Version=16.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitle" runat="server">
    <sharepoint:listitemproperty property="BaseName" maxlength="40" runat="server" />
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <meta name="GENERATOR" content="Microsoft SharePoint" />
    <meta name="ProgId" content="SharePoint.WebPartPage.Document" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="CollaborationServer" content="SharePoint Team Web Site" />
    <!-- Added using WebDAV mode by Marc Charmois --->
    <script type="text/javascript" src="/Sites/intranet2/Style%20Library/scripts/jquery-1.9.1.min.js"></script>
    <!--script type="text/javascript" src="/_layouts/15/sp.runtime.js"></script>
    <script type="text/javascript" src="/_layouts/15/sp.js"></script-->
    <!-- end of the WeDAV customization -->
    <sharepoint:scriptblock runat="server">
	var navBarHelpOverrideKey = "WSSEndUser";
	</sharepoint:scriptblock>
    <sharepoint:styleblock runat="server">
body #s4-leftpanel {
	display:none;
}
.s4-ca {
	margin-left:0px;
}
</sharepoint:styleblock>
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderSearchArea" runat="server">
    <sharepoint:delegatecontrol runat="server"
        controlid="SmallSearchInputBox" />
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderPageDescription" runat="server">
    <sharepoint:projectproperty property="Description" runat="server" />
</asp:Content>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <!-- Added using WebDAV mode by Marc Charmois --->
    <script>
        function branding() {
            try {
                var context = new SP.ClientContext.get_current();
                var web = context.get_web();
                //replace the current paths with yours....
                web.set_masterUrl('/sites/intranet2/_catalogs/masterpage/oslo.master');
                web.set_siteLogoUrl('/sites/intranet2/Style%20Library/images/Contoso-Blue.png');
                web.set_alternateCssUrl('/sites/intranet2/Style%20Library/CSS/Contoso.Intranet3.css');
                web.update();
                context.executeQueryAsync(onQuerySucceeded, onQueryFailed);
            } catch (error) {
                alert(error);
            }
        }

        function unBranding() {
            try {
                var context = new SP.ClientContext.get_current();
                var web = context.get_web();
                //replace the following path with yours....
                web.set_masterUrl('/sites/intranet2/_catalogs/masterpage/seattle.master');
                web.set_siteLogoUrl('/_layouts/15/images/siteIcon.png?rev=40');
                web.set_alternateCssUrl('');
                web.update();
                context.executeQueryAsync(onQuerySucceeded, onQueryFailed);
            } catch (error) {
                alert(error);
            }
        }

        function onQuerySucceeded(sender, args) {
            alert("The branding of your site was succesfully changed");
            window.location = window.location.href;
        }

        function onQueryFailed(sender, args) {
            alert('Request failed. ' + args.get_message() +
                '\n' + args.get_stackTrace());
        }
    </script>
    <!-- end of the WeDAV customization -->
    <div class="ms-hide">
        <webpartpages:webpartzone runat="server" title="loc:TitleBar" id="TitleBar" allowlayoutchange="false" allowpersonalization="false" style="display: none;" />
    </div>
    <!-- Added using WebDAV mode by Marc Charmois --->
    <br>
    <br>
    <a href="JavaScript:branding();" id="brand-button">Brand this site</a>
    <br />
    <a href="JavaScript:unBranding();" id="unBrand-button">Unbrand this site</a>
    <!-- end of the WeDAV customization -->
    <table class="ms-core-tableNoSpace ms-webpartPage-root" width="100%">
        <tr>
            <td id="_invisibleIfEmpty" name="_invisibleIfEmpty" valign="top" width="100%">
                <webpartpages:webpartzone runat="server" title="loc:FullPage" id="FullPage" frametype="TitleBarOnly" />
            </td>
        </tr>
        <sharepoint:scriptblock runat="server">if(typeof(MSOLayout_MakeInvisibleIfEmpty) == "function") {MSOLayout_MakeInvisibleIfEmpty();}</sharepoint:scriptblock>
    </table>
    <!-- Added using WebDAV mode by Marc Charmois --->
    <script type="text/javascript">
        var logoUrl = $(".ms-siteicon-img").attr('src');

        if (logoUrl.indexOf('Contoso') > -1) {
            document.getElementById('brand-button').disabled = "disabled";
            document.getElementById('brand-button').style.color = "silver";
        } else {
            document.getElementById('unBrand-button').disabled = "disabled";
            document.getElementById('unBrand-button').style.color = "silver";
        }
    </script>
    <!-- end of the WeDAV customization -->
</asp:Content>
