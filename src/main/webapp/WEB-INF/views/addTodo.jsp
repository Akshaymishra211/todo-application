<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Todo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
	  <h2>Add Your Todo</h2>
	  <form action="saveTodo" method="post">
	    <div class="form-group">
	      <label for="email">Email:</label>
	      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
	    </div>
	    <div class="form-group">
	      <label for="description">Description:</label>
	      <input type="text" class="form-control" id="email" placeholder="Enter Todo Decription" name="description">
	    </div>
	    <div class="checkbox">
	      <label><input type="checkbox" name="remember"> Remember me</label>
	    </div>
	    <button type="submit" class="btn btn-default">Submit</button>
	  </form>
	</div>
	
</body>
</html>