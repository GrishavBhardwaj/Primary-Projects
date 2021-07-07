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
   width:100%
}
</style>
</head>
<body>	

<div class="topnav">
  <a class="active">PractoClone</a>
</div>

	
		
		<hr>
			<%int nums = 1; %>
			<c:forEach items="${detailtoo}" var="detailtoo">
				<div class="treat">
				<table class="singledetail">
					<!--  th scope="row"><p><%= nums%></p></th>-->
				    <tr><td><span style="color:white">Patient Email:</span><h2><c:out value="${detailtoo.email}"/></h2></td></tr>
					<tr><td><span style="color:white">Issue:</span><h3> <c:out value="${detailtoo.issue1}"/></h3></td></tr>
					<tr><td><span style="color:white">Issue in Detail:</span>:<h3> <c:out value="${detailtoo.issue2}"/></h3></td></tr>
					<tr><td><span style="color:white">Severity:</span><h3><c:out value="${detailtoo.severity}"/></h3></td></tr>
				    <tr><td>
				    <form action="treated">
				    <textarea cols="30" rows="5" name="treat1" placeholder="Advice(if any)" required = "required"></textarea>
				    <textarea cols="30" rows="5" name="treat2" placeholder="Prescriptions(if any)"></textarea>
				    <textarea cols="30" rows="5" name="treat3" placeholder="Recommended Tests(if any)"></textarea>
				    <input type="hidden" name="emailid" value="${detailtoo.email}">
				     <input style= align:"centre" type="hidden" name="issue" value="${detailtoo.issue1}">
				     <input type="hidden" name="id" value="${detailtoo.id}">
				    <br>
				    <button class="doc" value="Submit">Treat</button>
				    </form>
				    <a href="http://localhost:8080/PractoClone/doc"><button class="doc">Back</button></a>
				    </td></tr>
					</table>
					</div> 
				
				<%nums++;%>
			</c:forEach>
		

</body>
</html>