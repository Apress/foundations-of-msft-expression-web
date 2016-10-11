<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Thank You</title>
<link rel="stylesheet" type="text/css" href="../chapter13/form.css" />
</head>
<body>
<p>
  <?
	$email = $_POST['email'] ;
  	$sname= $_POST['sname'] ;
  	$message = $_POST['message'] ;
	$subject = "Contact from Your Website" ; 
	//mail($email, $subject, $message, "From: $email" );
	mail("youremail@domain", "$subject", "$message","From: $sname <$email>");

?></p>
<div id="container">
<p>Thank you <? echo $sname ?>,</p>
<p>If your message:</p>
<blockquote>
  <p>&quot;<? echo $message ?>&quot;</p>
</blockquote>
<p>Requires a response it will be sent to : <? echo $email ?>
  </p>
</p>
	</div>
	<p class="footer">© 2007 Cheryl D. Wise</p>

</body>
</html>
