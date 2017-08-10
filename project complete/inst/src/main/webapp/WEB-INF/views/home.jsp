<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image:url('https://www.clipartsgram.com/image/1961263160-website-background-37.png');
}
</style>
<div class="container-fluid">
  <h3>Musical Items</h3>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
      <c:url  value="resources\images\home\m1.jpg" var="img1"></c:url>
        <img src="${img1 }" alt="Guitar collections" style="width:100%">
      </div>
      

      <div class="item">
      <c:url value="resources\images\home\trom.jpg" var="img2"></c:url>
        <img src="${img2 }" alt="Piano collections" style="width:100%">
      </div>
    
           
      <div class="item">
      <c:url value="resources\images\home\guyana.jpg" var="img3"></c:url>
        <img src="${img3 }" alt="saxaphone collections" style="width:100%">
        
  </div>
<div class="item">
<c:url value="resources\images\home\m4.jpg" var="img4"></c:url>
        <img src="${img4 }" alt="sitar collections" style="width:100%">
      </div>
    

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div></div></div>
  <div class="container-fluid">
  <h3 align="center">INSTRUMENT COLLECTIONS</h3>
  <div class="row">
    <div class="col-md-4">
      
      <c:url value="resources\images\home\m6.jpg" var="img5"></c:url>
      <a href="${img5 }" target="blank">
          <img src="${img5 }"  class="img-circle" alt="Lights" style="width:100%">
          <div class="caption">
            <p>Music is Motivated by Feelings..!</p>
          </div>
        </a>
      
    </div>
    <div class="col-md-4">
      
      <c:url value="resources\images\home\m7.jpg" var="img6"></c:url>
        <a href="${img6 }" target="Veena">
          <img src="${img6 }"  class="img-circle" alt="Lights" style="width:100%">
          <div class="caption">
            <p>Music Is Your Best Companion</p>
          </div>
        </a>
      
    </div>
    <div class="col-md-4">
      
      <c:url value="resources\images\home\m8.jpg" var="img7"></c:url>
        <a href="${img7 }" target="_blank">
          <img src="${img7 }"  class="img-circle" alt="Lights" style="width:100%">
          <div class="caption">
            <p>Colourful Music..</p>
          </div>
        </a>
       </div><br><br><br>
    <div class="col-md-4">
      
      <c:url value="resources\images\home\m9.jpg" var="img8"></c:url>
        <a href="${img8 }" target="_blank">
          <img src="${img8 }"  class="img-circle" alt="Lights" style="width:100%">
          <div class="caption">
            <p>Music Is
             What Feelings Sound Like..</p>
          </div>
        </a>
     
    </div>
    <div class="col-md-4">
     
      <c:url value="resources\images\home\m10.jpg" var="img9"></c:url>
        <a href="${img9 }" target="_blank">
          <img src="${img9 }"  class="img-circle" alt="Lights" style="width:100%">
          <div class="caption">
            <p>Without Music World Would Be..?</p>
          </div>
        </a>
   
    </div><div class="col-md-4">
      
      <c:url value="resources\images\home\m14.jpg" var="img10"></c:url>
        <a href="${img10 }" target="_blank">
          <img src="${img10 }"  class="img-circle" alt="Lights" style="width:100%">
          <div class="caption">
            <p>Music On World Off</p>
    </div>
        </a>
   
        <br> <br> <br> <br> <br> <br> <br> <br> <br>
      </div> </div></div><%@include file="footer.jsp" %>  
</body>
</html>