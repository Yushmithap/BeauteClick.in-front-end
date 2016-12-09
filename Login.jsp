<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Form</title>
<style>
input[type=text],input[type=password]{
width:30%;
margin:3px 2px 3px 2px;
text-align:Center;
}
input[type=submit],input[type=resaet]{
text-align:Center
}
div{
margin:100px 100px 100px 100px;
align:center;
background-color:lightblue;
}
</style>
</head>
<body>
<div>
	<form action="LoginServlet" method="post"  >
		User Name: <input type="text" name="username"><br><br>
		Password: <input type="password" name="password"><br><br> 
		<input type="submit" value="Submit"> 
		<input type="reset" value="Reset">
	</form>
</div>
</body>
=======
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
input[type=text],input[type=password]{
width:50%;
margin:3px 2px 3px 2px;
}
</style>
</head>
<body>
	<form action="LoginServlet" method="post" >
		User Name: <input type="text" name="username"><br><br>
		Password: <input type="password" name="password"><br><br> 
		<input type="submit" value="Submit"> 
		<input type="reset" value="Reset">
	</form>

</body>
>>>>>>> origin/master
</html>