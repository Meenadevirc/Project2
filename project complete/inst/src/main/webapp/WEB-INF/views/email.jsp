<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('https://www.clipartsgram.com/image/1961263160-website-background-37.png');}
h3{text-align:center;}
</style>
</head>
<body>
<form method="post" action="sendEmail" enctype="multipart/form-data">
<table align="center";>

   	<tr><td><h3>Email</h3></td><td><input type="text" name="mailTo" class="form-control" path="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="(i.e,)abcd@gmail.com"> </td></tr>
	<tr><td><h3>First Name</h3></td><td><input type="text" name="first_name" class="form-control" path="firstname" pattern="[A-Za-z\s]{3,}" title="Give valid character(i.e)YYY"></td></tr>
	<tr><td><h3>Subject</h3></td> <td> <input type="text" name="subject" class="form-control" pattern="[A-Za-z0-9.@-\s]{3,}" title="Give valid character(i.e)Regarding Job Oriented"></td></tr>
	<tr><td><h3>Message For Us</h3></td><td>  <input type="text" name="message" class="form-control" pattern="[A-Za-z0-9.@-\s]{3,}" title="Give valid character(i.e)This is the message box"> </td></tr>
	<tr><td><h3>attachFile</h3></td><td><input type="file" class="form-control" name="attachFile"/></td></tr>
	
	
	
	</table><h3><input type="submit"  value="send"></h3></form>



</body><br><br><br><br><br>
</html><%@ include file="footer.jsp" %>
