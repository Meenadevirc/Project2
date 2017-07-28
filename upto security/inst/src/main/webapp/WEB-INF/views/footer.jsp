<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class ="container">
  <div class="navbar navbar-default">
  <p class="navbar-text">2016©AudioJungle.org</p>
  <div class="row">
  <div class="col-md-2">
   <div class="nav navbar  navbar-right">
   <a href="#">Facebook</a>
   <c:url value="/resources/images/footer/fb.jpg" var="img12"></c:url>
   <img src="${img12 }" class="img-roundedcircle"></div>
   </div>
   <div class="col-md-2">
   <div class="navbar-text-pull-right">
   <c:url value="/resources/images/footer/twit.jpg" var="img13"></c:url>
   <a href="${img13}">Twitter</a>
   <img src="${img13 }" class="img-roundedcircle">
   
   </div>
   </div>
   <div class="col-md-2">
   <div class="navbar-text-pull-right">
   <c:url value="/resources/images/footer/lyk.jpg" var="img15"></c:url>
   <a href="${img15 }">like</a>
   <img src="${img15 }" class="img-roundedcircle">
   </div>
   </div>
   <div class="col-md-2">
    <div class="navbar-text-pull-right">
    <c:url value="/resources/images/footer/wtsap.jpg" var="img16"></c:url>
    <a href="${img16 }">whatsap</a><img src="${img16 }" class="img-roundedcircle"></div>
   </div>
  </div>
  </div></div>

</body>
</html>