<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href='<c:url value="/resources/css/doc.css" />'
	rel="stylesheet">
<title>PractoClone</title>
<style>
.topnav a.active {
  background-color: white;
  color: #28328c;
   float: left;
   font-size: 22px;
   font-weight: 900;
   padding: 14px 16px;
    width: 100%;
}
</style>
</head>
<body>
	<div class="topnav">
  <a class="active">PractoClone</a>
</div>
<hr>
	<form  class="minidetails" class="minidetails" action="logout">
		<input  class="temp" type="submit" value="Logout">
	</form>

		<p>
		Select Any Patient To provide Treatment
		</p>
		<tbody>
			<%int nums = 1; %>
			<c:forEach items="${detail}" var="detail">
	
				<table class="minidetails">
					<!--  th scope="row"><p><%= nums%></p></th>-->
					<tr><td><span style="color:white">Patient Email:</span><h2><c:out value="${detail.email}"/></h2></td></tr>
					<tr><td><span style="color:white">Issue:</span><h3> <c:out value="${detail.issue1}"/></h3></td></tr>
					<tr><td><span style="color:white">Severity:</span><h3><c:out value="${detail.severity}"/></h3></td></tr>
				    <tr><td>
				    <form action="treatment">
				    <input type="hidden" name="emailid" value="${detail.email}">
				    <input type="hidden" name="issue" value="${detail.issue1}">
				    <input type="hidden" name="id" value="${detail.id}">
				    <button class="doc" value="Submit">Treat</button>
				    </form>
				    </td></tr>
					</table>
					
				
				<%nums++;%>
			</c:forEach>
		</tbody>

</body>
</html>