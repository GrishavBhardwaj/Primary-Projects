<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile Page</title>
<style>
.topnav a.active {
  background-color: white;
  color: #28328c;
   float: left;
   font-size: 22px;
   font-weight: 900;
   padding: 14px 16px;
   width:100%
}	
</style>
<link href='<c:url value="/resources/css/cust.css"/>'
	rel="stylesheet">
</head>
<body>
<div class="topnav">
  <a class="active">PractoClone</a>
</div>
<hr>
	<br>
	<br>
	
	<div class="singledetail">
	<form action="process_edit"><h3>
		Name: &nbsp &nbsp &nbsp &nbsp<input type="text" name = "name" value = "${name }" required = "required" pattern = "[a-zA-Z][a-zA-Z ]+[a-zA-Z]$" title = "Only alphabets.">
		<input type="submit" value="Apply change to name" class="cust"><br><br>
		
		Age: &nbsp &nbsp &nbsp &nbsp &nbsp  <input type="text" name = "age" value = "${age }" required = "required" pattern ="^0*(?:[1-9][0-9]?|100)$" title = "Only numbers."> 
		<input type="submit" value="Apply change to age" class="cust"><br><br>
		
		Email: &nbsp &nbsp &nbsp &nbsp<label>${email }</label> <br><br>
		<input type = "hidden" value="${email }" name = "email"/>
		
		Number: &nbsp &nbsp<input type="text" name = "number" value = "${number }" required = "required" pattern = "^\d{10}$"  title = "only a valid phone number"> 
		<input type="submit" value="Apply change to number" class="cust"><br><br>
		
		Password: &nbsp<label>${pass }</label> <br><br>
		<input type = "hidden" value="${pass }" name = "pass"/>
	</h3>
	</form>
	</div>
	<br><br>
	
	<form action="cust_home">

		<input type="submit" value="Go back" class="cust">
	</form>
</body>
</html>