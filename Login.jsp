<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>
body{
	background-color:lightpink;
	font-family: Verdana;
	background-image: url("img/pain.jpg");
	margin:auto;
	text-decoration: none;
	font-size: 18px;
}
input[type=text]{
	width: 28%;
	font-size: 13px;	
}
input[type=password]{
	width: 28%;
	font-size: 13px;
}
a:hover{
	text-decoration: none;
}
h4{
	font-size: 18px;
}


</style>
</head>

<body>


 <div class="container">
 <div class="row">
 <div class="col-lg-12 col-lg-offset-5">
  <h4>Login to WatchableStock</h4>
  <form action="validate">
    <div class="form-group">
      <label for="email">Email</label>
      <input type="text" class="form-control" name="email" Placeholder="Your Email Address">
    </div>
    <div class="form-group">
      <label for="pwd">Password</label>
      <input type="password" class="form-control" name="password" Placeholder="Enter Password">
    </div>
    <div class="form-group">
    <input type="checkbox">Remember<br>
    </div>
    <button type="submit" class="btn btn-default" style="font-size:16px;height:30px;">LOG IN</button>
  </form>
  </div>
  </div>
  </div>
  
  
</body>
</html>