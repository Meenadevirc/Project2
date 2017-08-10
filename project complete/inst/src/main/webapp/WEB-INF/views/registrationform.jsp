<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body{
background-image:url('https://www.clipartsgram.com/image/1961263160-website-background-37.png');
}
h3{color:black;}
h4{color:blue; text-align:center;}
</style>
</head>
<body>
<c:url value="/all/savecustomer" var="url"></c:url>
<form:form action="${url }" modelAttribute="customer">
<div class="row">
<div class="col-md-4">
<h2>Customer Details</h2>
<h3>Enter First Name</h3>
<form:input  class="form-control" path="firstname" pattern="[A-Za-z]{3,}" title="Give valid character(i.e)YYY"/>
<form:errors path="firstname" style="color:red"></form:errors>

<h3>Enter Last Name</h3>
<form:input  class="form-control" path="lastname" pattern="[A-Za-z]{3,}" title="Give valid character(i.e)XXXX "/>
<form:errors path="lastname" style="color:red"></form:errors>
<h3>Enter Mobile Number</h3>
<form:input  class="form-control" path="phone" pattern="[789][0-9]{9}" title="Enter 10 Digit number.Number starting from 7 or 8 or 9" />
<form:errors path="phone" style="color:red"></form:errors>
<h3>Enter Email</h3>
<form:input  class="form-control" path="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" title="(i.e,)abcd@gmail.com"/>
<form:errors path="email" style="color:red"></form:errors>
<p style="color:white">${duplicateEmail }</p>
<h3>Enter Username</h3>
<form:input class="form-control" path="user.username" pattern="[A-Za-z0-9\s]{3,}" title="Username should valid"/>
<form:errors path="user.username" style="color:red"></form:errors>
<p style="color:white">${duplicateUsername }</p>
<h3>Enter Password</h3>
<form:input class="form-control" path="user.password" type="password" pattern=".{6,}" title="Require 6 characters"/>
<form:errors path="user.password" style="color:red"></form:errors></div>
<div class="col-md-4">
<h2>Billing Address</h2>
<h3>Enter Street name</h3>
<form:input class="form-control" path="billingAddress.streetname" pattern="[A-Za-z\s]{3,}" title="Should not in number"/>
<form:errors path="billingAddress.streetname" style="color:red"></form:errors><h3>Enter Apartment number</h3><form:input class="form-control" path="billingAddress.apartmentnumber" pattern="[A-Za-z0-9.,/\/@-\s]{3,}" title="(i.e)no.11 xxxx"/>
<form:errors path="billingAddress.apartmentnumber" style="color:red"></form:errors>
<h3>Enter City</h3>
<form:input class="form-control" path="billingAddress.city" pattern="[A-Za-z]{3,}" title=" For example:chennai"/>
<form:errors path="billingAddress.city" style="color:red"></form:errors>
<h3>Enter State</h3>
<form:input class="form-control" path="billingAddress.state" pattern="[A-Za-z\s]{3,}" title="Give valid information (i.e,)Tamilnadu"/>
<form:errors path="billingAddress.state" style="color:red"></form:errors>
<h3>Enter Country</h3>
<form:input class="form-control" path="billingAddress.country" pattern="[A-Za-z]{3,}" title="Give valid information"/>
<form:errors path="billingAddress.country" style="color:red"></form:errors>
<h3>Enter Zipcode</h3>
<form:input class="form-control" path="billingAddress.zipcode" pattern="[0-9]{6}" title="Six digit zipcode"/>
<form:errors path="billingAddress.zipcode" style="color:red"></form:errors>
</div>
<div class="col-md-4">
<h2>shipping Address</h2>
<h3>Enter Street name</h3>
<form:input class="form-control" path="shippingAddress.streetname" pattern="[A-Za-z\s]{3,}" title="should not in numbers"/>
<form:errors path="shippingAddress.streetname" style="color:red"></form:errors>
<h3>Enter Apartment number</h3>
<form:input class="form-control" path="shippingAddress.apartmentnumber" pattern="[A-Za-z0-9,/.-\s]{3,}" title="Should be valid"/>
<form:errors path="shippingAddress.apartmentnumber" style="color:red"></form:errors>

<h3>Enter City</h3>
<form:input class="form-control" path="shippingAddress.city" pattern="[A-Za-z]{3,}" title="Give valid information "/>
<form:errors path="shippingAddress.city" style="color:red"></form:errors>
<h3>Enter State</h3>
<form:input class="form-control" path="shippingAddress.state" pattern="[A-Za-z\s]{3,}" title="Should be valid"/>
<form:errors path="shippingAddress.state" style="color:red"></form:errors>
<h3>Enter Country</h3>
<form:input class="form-control" path="shippingAddress.country" pattern="[A-Za-z]{3,}" title="Should be valid"/>
<form:errors path="shippingAddress.country" style="color:red"></form:errors>

<h3>Enter Zipcode</h3>
<form:input class="form-control" path="shippingAddress.zipcode" pattern="[0-9]{6}" title="Only Six digits"/>
<form:errors path="shippingAddress.zipcode" style="color:red"></form:errors>
</div>
</form:form></div><br>
<h4><input type="submit" value="Register"></input></h4>
<br><br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>