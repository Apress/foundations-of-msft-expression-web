<%@LANGUAGE="VBSCRIPT"%>
<%
dim sname, email, message, subject

sname = Request.Form("sname")
email = Request.Form("email")
subject= "Domain Contact Form"
smessage = Request.Form("message")

Dim ObjMail 
 Set ObjMail = Server.CreateObject("CDO.Message") 
 objMail.From = sname & " <" & email & ">" 
 objMail.To = " cdwise@wiserways.com"
 objMail.Subject = "Contact from Foundations of Expression" 
 objMail.TextBody = smessage 
 objMail.Send
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta http-equiv="Content-Language" content="en-us" />
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Thank You</title>
<!-- insert styles or scripts here -->
</head>

<body>

<img alt="Foundation of Microsoft Expression Webr" 
src="../../images/bcm3.png" class="floatright" width="126" height="164" />
<div id="masthead">
	<h1>Expression Web<br />
	<span class="tagline">The basics and beyond</span></h1>
</div>
<div id="menu">
	<img alt="" src="../../images/menu-lft.gif" width="33" height="45" 
	class="floatleft" />
	<ul>
		<li><a href="../../index.html">home</a></li>
		<li><a href="../../about.aspx">about</a></li>
		<li><a href="../default.aspx">exercises</a></li>
		<li><a href="../../links/default.aspx">links</a></li>
		<li><a href="../../contact.aspx">contact</a></li>
	</ul>
</div>
<div id="container">
	<div id="leftcol">
		<h3>&nbsp;</h3>
	<p>&nbsp;</p>
	<div id="main_content">
<p>Thank You <%=sname %></p>
<p>If your message:</p>
<blockquote>
  <p>&quot;<%=smessage %>&quot;</p>
</blockquote>
<p>Requires a&nbsp; response will be sent to <%=email%></p>
</div>
<div id="footer">
	<p>© 2007 Cheryl D. Wise</p>
</div>

</body>

</html>
