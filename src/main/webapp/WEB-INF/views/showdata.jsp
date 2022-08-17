<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>${Name }</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.collapsible {
  background-color: #777;
  color: white;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: #555;
}

.content {
  padding: 0 18px;
  display: none;
  overflow: hidden;
  background-color: #f1f1f1;
}
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>
<body>
	<%
		String name=(String)request.getAttribute("Name");
	%>
	<div align="right">
		<label style="font-size: 25px; font-weight: bold;">Welcome <%=name %></label>
	</div>
	<h2>Hello ${Name } Operations that you can use:</h2>
	<button type="button" class="collapsible">Want to Check your Todo's?</button>
	<div class="content">
		<table class="table">
		  <thead class="thead-dark">
		    <tr>
		      <th scope="col">ID</th>
		      <th scope="col">Todo</th>
		      <th scope="col">Status</th>
		    </tr>
		  </thead>
		  <tbody>
			  <x:forEach items="${todos }" var="todo">
				    <tr>
				      <th scope="row">${todo.getId()}</th>
				      <td>${todo.getTodo()}</td>
				      <td>${todo.getStatus() }</td>
				    </tr>
			   </x:forEach>
		  </tbody>
		</table>
		<br>
	</div>
	
	
	<button type="button" class="collapsible">Want to Add New Todo?</button>
	<div class="content" align="center">
	  <br>
	  <a href="addNewTodo" style="font-size: 19px">Add Todo</a>
	</div>
	
	
	
	<script>
	var coll = document.getElementsByClassName("collapsible");
	var i;
	
	for (i = 0; i < coll.length; i++) {
	  coll[i].addEventListener("click", function() {
	    this.classList.toggle("active");
	    var content = this.nextElementSibling;
	    if (content.style.display === "block") {
	      content.style.display = "none";
	    } else {
	      content.style.display = "block";
	    }
	  });
	}
	</script>
</body>
</html>