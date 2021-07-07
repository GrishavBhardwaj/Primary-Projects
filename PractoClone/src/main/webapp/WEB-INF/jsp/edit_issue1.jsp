<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Complaint</title>
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
	<form:form  action="process_issue" modelAttribute="complaints">

		<h3>New Status (Select 1 if the complaint is resolved, 0 if its still
		persisting): <form:radiobutton path="status" value="0" checked = "checked"/> 0
		<form:radiobutton path="status" value="1"/>1
		
		Please write about your problem in one sentence:<form:input
			path="issue1" value = "${issue1 }"
			style="width: 245px;" required = "required"/>
			<br> <br> 
			
		Explain issue in brief:
		<form:textarea cols="50" rows="10" path="issue2" placeholder = "${issue2 }" required = "required" ></form:textarea>
		<br> <br> 
		
		
		Which of these better describe severity of the issue:<br>
		<form:radiobutton path="severity" value="Low" checked = "checked" /> Low <br> 
		
		<form:radiobutton path="severity" value="Normal"/> Normal<br> 
		
		<form:radiobutton path="severity" value="High"/> High <br>
			
		<form:radiobutton path="severity" value="Extreme"/>Extreme <br><br>
			
		<form:button class="cust">Submit</form:button>
		</h3>
	</form:form>
	</div>
	<form action="edit_issue">

		<input class="cust" type="submit" value="Go back">
	</form>
	
</div>
</body>
</html>