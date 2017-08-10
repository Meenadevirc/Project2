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


<c:url value="j_spring_security_check" var="login"></c:url>
<form action="${login }" method="post"><br><br><br><br>
<div class="container">
<table align="center">
  <div class="row">
      <div id="logo-container"></div>
      <div class="col-sm-4 col-md-4 col-md-offset-1">
        <form action="" id="loginForm">
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
            <input class="form-control" type="text" name='j_username' placeholder="username"/>          
          </div>
          <div class="form-group input-group">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
            <input class="form-control" type="password" name='j_password' placeholder="password"/>    
          </div>
          <div class="form-group">
            <button type="submit"   class="btn btn-info btn-block ">Login</button>
          </div><span style="color:red">${error}</span>
        </form>         
      </div> 
    </div>    
  </div>
  </table>
</div></form><br><br><br><br><br><br><br><br><br>
 <%@include file="footer.jsp" %>
