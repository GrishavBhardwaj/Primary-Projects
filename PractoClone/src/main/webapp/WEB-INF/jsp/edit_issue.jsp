<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Issue</title>
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
</head>
<body>

	<form  action="edit_issue1">

		Enter id of complaint to edit:<input type="text" name="id" required = "required" pattern = "^[0-9]*$" title = "Only valid id">
		
		<input class="cust"type="submit" value="Submit">

	</form>
	<form  class="minidetails" action="cust_home">

		<input class="cust" type="submit" value="Go back">
	</form>

	<br>
	<br>

	
			<%int nums = 1; %>
			<c:forEach items="${complaints1}" var="complaints1">

				<table class="minidetails">
					<!--  th scope="row"><p><%= nums%></p></th>-->
					<tr><td><span style="color:white">Patient ID</span><h2><c:out value="${complaints1.id}"/></h2></td></tr>
					<tr><td><span style="color:white">Status</span><h2><c:out value="${complaints1.status}"/></h2></td></tr>
					<tr><td><span style="color:white">Issue</span><h3><c:out value="${complaints1.issue1}"/></h3></td></tr>
					<tr><td><span style="color:white">Issue in Detail:</span><h3><c:out value="${complaints1.issue2}"/></h3></td></tr>
				    <tr><td><span style="color:white">Severity:</span><h3><c:out value="${complaints1.severity}"/></h4></td></tr>
				    <tr><td><span style="color:white">Advice:</span><h3><c:out value="${complaints1.treat1}"/></h4></td></tr>
				    <tr><td><span style="color:white">Prescription:</span><h3><c:out value="${complaints1.treat2}"/></h4></td></tr>
				    <tr><td><span style="color:white">Recommended Test:</span><h3><c:out value="${complaints1.treat3}"/></h4></td></tr>
					</table>
					
				
				<%nums++;%>
			</c:forEach>
		</tbody>
		<br><br>

	
</body>
</html>