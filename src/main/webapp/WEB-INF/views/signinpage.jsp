<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>SignIn</title>
  	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	  <h2>Sign Up</h2>
	  <form action="success" method="post">
	  <div class="form-group">
	      <label for="name">Name:</label>
	      <input type="text" class="form-control" id="name" placeholder="Enter Name" name="name">
	    </div>
	    <div class="form-group">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
	    </div>
	    <div class="form-group">
	      <label for="pwd">Create Password:</label>
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
	    </div>
	    <div class="form-group">
	      <label for="pwd">Re-Enter Password:</label>
	      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="repassword">
	    </div>
	    <div>
	    	<p>
	    		"Already have an account?"
	    		<a href="home">LogIn</a>
	    	</p>
	    </div>
	    <button type="submit" class="btn btn-default" onsubmit="error">Sign-Up</button>
	  </form>
	</div>	
</body>
</html>
