<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
    background-color: white;
    font-size: 18px;
    font-family: Verdana; 
    
    
}
a:link, a:visited {
    
    color: black;
    padding: 13px 13px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
   
}
a:hover, a:active {
   text-decoration: none;
}
span{
	margin-left: 3px;
}


div{
	margin:auto;
}

</style>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-lg-12 col-lg-offset-10">
         <h1><span class="glyphicon glyphicon-eye-open" style="color:maroon;"></span><cite style="color:maroon;font-family:fantasy;font-size:30px">WatchableStock.in</cite></h1>
         
</div>
	</div>
</div>

<c:if test="${empty successMsg}">
<table style="background-colour: lightpink;">
<tr>
<td><span class="glyphicon glyphicon-user"></span><a href="login" >LOGIN</a></td>
<td><a href="register">SIGN UP</a></td>
</tr>
</table>
</c:if>

<div class="container">
	<div class="row">
		<div class="col-lg-6 col-lg-offset-11">
			
			<table>
				<tr>
				<td><span class="glyphicon glyphicon-shopping-cart"></span><a href="cart">CART</a></td>
				<td><span class="glyphicon glyphicon-briefcase"></span><a href="buy">BUY</a></td>
				</tr>
			</table>
			
		</div>
	</div>
</div>

<c:if test="${homePage}">
<jsp:include page="carousel_images.jsp"></jsp:include>
</c:if>

${successMsg}

<c:if test="${showLoginPage}">
<jsp:include page="login.jsp"></jsp:include>
</c:if>


<c:if test="${not empty errorMsg}">
	${errorMsg}
<jsp:include page="login.jsp"></jsp:include>
</c:if>

<c:if test="${showRegistrationPage}">
<jsp:include page="registration.jsp"></jsp:include>
</c:if>

<c:if test="${showCartPage}">
<jsp:include page="cart.jsp"></jsp:include>
</c:if>

<c:if test="${showBuyPage}">
<jsp:include page="buy.jsp"></jsp:include>
</c:if>

</body>
</html>