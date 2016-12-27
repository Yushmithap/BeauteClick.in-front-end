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
body {
	
	font-family: Verdana;
	background-image: url("img/pain.jpg");
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
input[type=radio]{
	padding: 5px;
}
a:hover{
	text-decoration: none;
	colour: black;
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
  <h4>SignUp with WatchableStock</h4>
  <form>
    <div class="form-group">
      <label for="email">Email</label>
      <input type="text" class="form-control" id="email" Placeholder="Your Email Address">
    </div>
    <div class="form-group">
      <label for="pwd">Password</label>
      <input type="password" class="form-control" id="password" Placeholder="Choose Password">
    </div>
    <div class="form-group">
      <label for="pwd">Mobile</label>
      <input type="text" class="form-control" id="mobile" Placeholder="Mobile Number(For order status updates)">
    </div>
    
    <div class="radio-inline">
    <input type="radio" value="Male">Male
    </div>
    <div class="radio-inline">
    <input type="radio" value="Female">Female<br>
    </div><br>
    <div class="button">
    <button type="submit" class="btn btn-default" style="font-size:18px;height:30px;">Register</button>
    </div>
  </form>
</div>
</div>
</div>


</body>
</html>