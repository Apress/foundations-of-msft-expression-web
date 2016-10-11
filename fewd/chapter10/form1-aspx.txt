<%@ Page Language="VB" %>
<%@ Import Namespace="System.Web.Mail" %>  
<script runat=server>  
Sub Page_Load(Sender as Object, E as EventArgs)  
   If Page.IsPostBack Then
       lblResponse.Text = "Your message has been sent."
   End If
End Sub  

Sub doEmail(Source as Object, E as EventArgs)
	Dim sMsg as String
	sMsg+="Submission from domain contact form:" & vbcrlf
	sMsg+="Name : " & txtname.Text & vbcrlf
	sMsg+="Message : " & txtmessage.Text & vbcrlf
		
	Dim objEmail as New MailMessage
	objEmail.To= "you@domain.com" 
	objEmail.FROM="webmaster@domain.com"

	objEmail.SUBJECT="From domain website" & vbcrlf
	objEmail.BODY=sMsg
	objEmail.BodyFormat = MailFormat.Text
	SmtpMail.SmtpServer ="localhost"
	SmtpMail.Send(objEmail)
End Sub

</script>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>ASP.NET form</title>
<link rel="stylesheet" type="text/css" href="form.css">

</head>
<body>
<h2>Contact Us</h2>
<form id="form1" runat="server">
 <h3><asp:Label ID="lblResponse" runat="server">Please provide the following information:</asp:Label></h3>

	<asp:Label runat="server" Text="Name: " id="lblsname" 
	AssociatedControlID="txtname"></asp:Label>
	<asp:TextBox runat="server" id="txtname"></asp:TextBox>
	<br />
	<asp:Label runat="server" Text="Email: " id="lblemail" 
	AssociatedControlID="txtemail"></asp:Label>
	<asp:TextBox runat="server" id="txtemail"></asp:TextBox>
	<br />
	<asp:Label runat="server" Text="Message: " id="lblmessage" 
	AssociatedControlID="txtmessage"></asp:Label>
	<asp:TextBox runat="server" id="txtmessage" Width="300px" Rows="10" 
	TextMode="MultiLine"	></asp:TextBox>
	<br />
	<asp:Button runat="server" text="Submit" id="subimit" CssClass="submit" 
	Height="27px" />
</form>
</body>
</html>