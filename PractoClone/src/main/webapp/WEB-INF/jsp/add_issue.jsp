<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Issue</title>
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

	<div class="singledetail">
	<form action="process_add">
	<h3>
		Please write about your problem in one sentence: <input type="text"
			name="issue1" placeholder="Eg: Have fever of 33 degree celcius."
			style="width: 245px;" required = "required"/><br> <br> 
			
		Explain issue in brief:
		<textarea cols="50" rows="10" name="issue2" placeholder="Write here." required = "required"></textarea><br> <br> 
		
		Which of these better describe severity of the issue:<br> 
		<input type="radio" id="Low" name="severity"
			value="Low" checked="checked"> Low <br> 
		<input type="radio" id="Normal"
			name="severity" value="Normal"> Normal<br> 
		<input type="radio" id="High" name="severity" 
			value="High"> High <br>
		<input type="radio" id="Extreme" name="severity" 
			value="Extreme"> Extreme <br><br>
			
		<input type="submit" value="Submit"  class="cust">
		</h3>
	</form>
	</div>
	<form action="cust_home">
	
	<input type="submit" value="Go back"  class="cust">
	</form>
</body>
</html>