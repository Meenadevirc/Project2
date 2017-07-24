
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
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
</head>
<body>
<div class="container-fluid">
<nav class="navbar  navbar-default">
<ul class="nav navbar-nav">
<li><img src="resources\images\header\m52.jpg" class="img-circle"></li></ul>
<ul class="nav navbar-nav navbar-center">
<li><h2> MUSIC IS THE UNIVERSAL LANGUAGE OF MANKIND...</h2></li>

</ul>
</nav>
</div>
<div class="nav navbar-default">
<div class="container">
<nav class="navbar navbar-inverse navbar static-top">  
  
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=.navHeaderCollapse>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    <span class="icon-bar"></span>
    </button>
      <a class="navbar-brand" href="#">WebSiteName</a>
      </div>
    <div class="collapse navbar-collapse navHeaderCollapse">
    <ul class="nav navbar-nav"> 
   
    <li class="active"><a href="home">Home</a></li>
      <li><a href="#">About us</a></li>
      <li><a href="#">Contact us</a></li> </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><a href="#">Login</a></li>  
      <li><a href="#">Register</a></li>
      <li><a href="getproductform"> Add Product</a><li>
    <li><a href="all/product/getallproducts">Browse All Products</a></li></ul>
    </div>
    </nav>
    </div>
    
    </div>

</body>
</html>