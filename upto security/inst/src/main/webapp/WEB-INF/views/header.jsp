
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="security"
uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="https://code.jquery.com/jquery-2.2.1.min.js"></script>
 <script src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>
 <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
 <style>
body{
background-image:url('https://s.smore.com/fr/notes.fbc3656a.jpg')
}h3{color:white;}
</style></head>
<body>
<div class="container-fluid">
<nav class="navbar  navbar-inverse">
<ul class="nav navbar-nav">
<c:url value="/resources/images/header/m52.jpg" var="img11"></c:url>
<li><img src="${img11 }" class="img-circle"></li></ul>
<ul class="nav navbar-nav navbar-center">
<li><h3> MUSIC IS THE UNIVERSAL LANGUAGE OF MANKIND...</h3></li>

</ul>
</nav>
</div>

<div class="container-fluid">
<nav class="navbar navbar-inverse navbar static-top">  
  
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=.navHeaderCollapse>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    </button>
      <a class="navbar-brand" href="#">AudioJungle</a>
      </div>
    <div class="collapse navbar-collapse navHeaderCollapse">
    <ul class="nav navbar-nav"> 
   <c:url value="/home" var="url1"></c:url>
    <li class="active"><a href="home">Home</a></li>
     <c:url value="/aboutus" var="url2"></c:url>
      <li><a href="aboutus">About us</a></li>
     <c:url value="/contact us" var="url3"></c:url>
      <li><a href="#">Contact us</a></li> </ul>
      <ul class="nav navbar-nav navbar-right">
      <c:url value="Login" var="url4"></c:url>
      <li><a href="#">Login</a></li>  
      <c:url value="/Register" var="url5"></c:url>
      <li><a href="#">Register</a></li>
      <c:url value="/admin/getproductform" var="geturl"></c:url>
      <li>
      <c:if test="${pageContext.request.userPrincipal.name!=null }">
<security:authorize access="hasRole('ROLE_ADMIN')">     
      <li><a href="${geturl }"> Add Product</a></security:authorize></c:if></li>
      <c:url value="all/product/getallproducts" var="allurl"></c:url>
    <li><a href="${allurl }">Browse All Products</a></li>
    <li class=dropdown">
    <a  href="" class="dropdown-toggle" data-toggle="dropdown"> 
    Select by Category<b class="caret"></b></a>
    <ul class="dropdown-menu">
    <li>
    <c:forEach items="${categories }" var="c">
    <c:url value="/all/product/searchbycategory?searchCondition=${c.categoryName }" var="catname"></c:url>
   <a href="${catname }">${c.categoryName }</a> </c:forEach>
   <c:url value="/all/product/searchbycategory?searchCondition=All" var="search"></c:url>
   <a href="${search }">All</a></li></ul></li>
   <li>
   <c:if test="${pageContext.request.UserPrincipal.name!==null }">
    <a href="">Welcome ${pageContentext.request.userPrincipal.name }</a>
 </c:if>
   </li>  
   <c:if test="${pageContext.request.userPrincipal.name==null }">
    <c:url value="/all/registrationform" var="reg"></c:url>
    <li><a href="${reg}" >Signup</a></li>
    <c:url value="/login" var="log"></c:url>
    <li><a href="${log}">SignIn</a></li>
</c:if>
<c:url value="/j_spring_security_logout" var="logoutUrl"  ></c:url>
<c:if test="${pageContext.request.userPrincipal.name!=null }" > 
<li><a href="${logoutUrl }">logout</a>
</li></c:if></ul>
    </div>
    </nav>
    </div>
    
    </body>
</html>