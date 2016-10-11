<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Page Language="VB" %>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chapter 13</title>
<link rel="stylesheet" type="text/css" href="form.css" />
</head>

<body>

<form id="form1" runat="server">
	<asp:ValidationSummary runat="server" id="ValidationSummary1" />
	<asp:Label runat="server" Text="Name: " id="lblsname" AssociatedControlID="sname"></asp:Label>
	<asp:TextBox runat="server" id="sname">
	</asp:TextBox>
	<asp:RequiredFieldValidator runat="server" ErrorMessage="* name required" id="Reqsname" ControlToValidate="sname" Display="Dynamic">
	</asp:RequiredFieldValidator>
	<br />
	<asp:Label runat="server" Text="Email: " id="lblemail" AssociatedControlID="email"></asp:Label>
	<asp:TextBox runat="server" id="email">
</asp:TextBox>
	<asp:RequiredFieldValidator runat="server" ErrorMessage="email required" id="Reqemail" Display="None" ControlToValidate="email">
	</asp:RequiredFieldValidator>
	<asp:RegularExpressionValidator runat="server" ErrorMessage="a valid email is required" id="RegExconfirmemail" Display="None" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
		*
	</asp:RegularExpressionValidator>
	<br />
	<asp:Label runat="server" Text="Confirm Email: " id="lblconfirmemail" AssociatedControlID="email"></asp:Label>
	<asp:TextBox runat="server" id="confirmemail">
</asp:TextBox>
	<asp:RequiredFieldValidator runat="server" ErrorMessage="* confirm your email" id="Reqconfirm" Display="None" ControlToValidate="confirmemail">
	</asp:RequiredFieldValidator>
	<asp:CompareValidator runat="server" ErrorMessage="your email must match" id="Compemail" Display="None" ControlToCompare="email" ControlToValidate="confirmemail">
		*
	</asp:CompareValidator>
	<br />
	<asp:Label runat="server" Text="Message: " id="lblmessage" AssociatedControlID="message"></asp:Label>
	<asp:TextBox runat="server" id="message" Width="300px" Rows="10" TextMode="MultiLine"></asp:TextBox>
	<asp:RequiredFieldValidator runat="server" ErrorMessage="what is your message?" id="ReqMessage" ControlToValidate="message" Display="None">
	</asp:RequiredFieldValidator>
	<p class="submit">
	<asp:Button runat="server" text="Submit" id="subimit" /></p>
</form>

</body>

</html>
