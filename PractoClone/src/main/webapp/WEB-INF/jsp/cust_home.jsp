<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href='<c:url value="/resources/css/cust.css"/>'
	rel="stylesheet">
<title>Customer Home Page</title>
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
</head>
<body>
<div class="topnav">
  <a class="active">PractoClone</a>
</div>
<hr>

<div>
	
	<form  class="minidetails" action="logout">
		<input  class="cust" type="submit" value="Logout">

	</form>

	
	<form  class="minidetails" action="cust_profile">

		<input  class="cust" type="submit" value="Edit Profile">

	</form>
	
	<form  class="minidetails" action="edit_issue">

		<input class="cust" type="submit" value="Edit Complaints">

	</form>
		<form class="minidetails" action="add_issue">

		<input class="cust" type="submit" value="Add Complaint">

	</form>
	
	</div>	
		<tbody>
			<%int nums = 1; %>
			<c:forEach items="${complaints}" var="complaints">

				<table class="minidetails">
					<!--  th scope="row"><p><%= nums%></p></th>-->
					<tr><td><span style="color:white">Patient ID</span><h2><c:out value="${complaints.id}"/></h2></td></tr>
					<tr><td><span style="color:white">Status</span><h2><c:out value="${complaints.status}"/></h2></td></tr>
					<tr><td><span style="color:white">Issue</span><h3><c:out value="${complaints.issue1}"/></h3></td></tr>
					<tr><td><span style="color:white">Issue in Detail:</span><h3><c:out value="${complaints.issue2}"/></h3></td></tr>
				    <tr><td><span style="color:white">Severity:</span><h3><c:out value="${complaints.severity}"/></h4></td></tr>
				    <tr><td><span style="color:white">Advice:</span><h3><c:out value="${complaints.treat1}"/></h4></td></tr>
				    <tr><td><span style="color:white">Prescription:</span><h3><c:out value="${complaints.treat2}"/></h4></td></tr>
				    <tr><td><span style="color:white">Recommended Test:</span><h3><c:out value="${complaints.treat3}"/></h4></td></tr>
					</table>
					
				
				<%nums++;%>
			</c:forEach>
		</tbody>
	
</body>
</html>