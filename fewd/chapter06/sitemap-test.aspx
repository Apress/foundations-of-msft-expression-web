<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="VB" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled 1</title>
<style type="text/css">
.newStyle1 {
	font: Tahoma, Helvetica, Arial, sans-serif bold 1.5em;
	
}
</style>
</head>

<body>

<form id="form1" runat="server">
	<asp:Menu runat="server" id="Menu1" DataSourceID="SiteMapDataSource1" CssClass="newStyle1">
	</asp:Menu>
	<asp:SiteMapDataSource runat="server" ID="SiteMapDataSource1">
	</asp:SiteMapDataSource>
</form>

</body>

</html>
