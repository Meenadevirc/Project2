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
background-image:url|('https://www.colourbox.com/preview/3062710-color-wood-background.jpg');
}
h3{
color:white;

text:center;
}

</style>
</head>
<body>
<h3>Product details</h3>
<c:url value="/resources/images/${product.id }.png" var="imageurl"></c:url>
<img src="${imageurl }" height="70" width="70">
<table align="center">
<tr>
<td>
<h4>Product name:</h4></td><td>${product.productName }</td>
</tr>
<tr>
<td><h4>price:</h4></td><td>${product.price }</td></tr>
<tr>
<td><h4>Description:</h4></td><td>${product.description }</td></tr>
<tr>
<td><h4>Quantity:</h4></td><td>${product.quantity }</td></tr>

</table>
<c:if  test="${product.quantity==0 }">
Out Of Stock
</c:if>

<c:if test="${product.quantity!=0 }">
<c:url value="/cart/addtocart/${product.id }" var="load"></c:url>
<form action="${load}">
Enter Units<input  type="text" name="units"><br>

<button type="submit" 
 style="background:none;border:none;padding:0" class="btn btn-default btn-lg">
<span class="glyphicon glyphicon-shopping-cart"></span></button>
</form>
</c:if>
<c:url value="/all/product/getallproducts" var="url1"></c:url>
<a href="${url1 }">Back to product list</a><br>
</body>

</html>
<%@ include file="footer.jsp" %>