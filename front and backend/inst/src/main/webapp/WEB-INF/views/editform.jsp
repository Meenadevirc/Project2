<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:url value="/admin/product/editproduct" var="url"></c:url>
<form:form action="${url }" modelAttribute="productObj">
<form:hidden path="id"/>
Product Name:<form:input path="productName"/><br>
Product Description:<form:input path="description"/><br>
Price:<form:input path="quantity"/><br>
<input type="submit" value="Edit product">

</form:form>
</body>
</html>
<%@ include file="footer.jsp" %>