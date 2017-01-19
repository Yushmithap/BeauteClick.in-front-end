<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
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

span {
	margin-left: 3px;
}

div {
	margin: auto;
}
</style>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-sm-12 col-sm-offset-9">
				<h1>
					<span class="glyphicon glyphicon-eye-open" style="color: maroon;"></span><cite
						style="color: maroon; font-family: fantasy; font-size: 30px">BeautyClick.com</cite>
				</h1>

			</div>
		</div>
	</div>
	

	
		<table style="background-colour: lightpink;">
			<tr>
				<td><span class="glyphicon glyphicon-user"></span>
				<a href="loginHere">LOGIN</a></td>
				<td><a href="registerHere">SIGN UP</a></td>
			</tr>
		</table>
	
	


	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-11">
				<c:if test="${!empty loggedInUser}">
					
						<table>
							<tr>
							<c:if test="${empty isAdmin}">
								<td><span class="glyphicon glyphicon-shopping-cart"></span><a
									href="mycart">CART</a><i class="fa fa-shopping-cart">${cartSize}</i></td>
									</c:if>
							</tr>
						</table>
					
				</c:if>
			</div>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-sm-6 col-sm-offset-11">
				<c:if test="${!empty loggedInUser}">
					<a href="logout">Logout</a>
				</c:if>
			</div>
		</div>
	
	</div>

	<hr>
	<div class="container">

		<ul class="nav nav-pills" role="tablist">
			<c:forEach items="${categoryList}" var="category">
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> ${category.name} <span
						class="caret"></span></a>


					<ul class="dropdown-menu" role="menu">
						<c:forEach items="${category.products}" var="product">
							<li><a href="manageProductGet/${product.productID}">${product.name}</a></li>
						</c:forEach>
					</ul></li>
			</c:forEach>

		</ul>
	</div>
	<hr color="Blue" width="100" >
	${category.products}


</body>
</html>