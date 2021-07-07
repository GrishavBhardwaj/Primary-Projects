<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href='<c:url value="/resources/css/style.css" />' rel="stylesheet">


<style>
body {
	
}

.topnav {
	background-color: white;
	overflow: hidden;
}

/* Style the links inside the navigation bar */
.topnav a {
	float: right;
	background-color: #28328c;
	font: Sans-Serif;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 20px;
}

/* Change the color of links on hover */
.topnav a:hover {
	background-color: #ddd;
	font: Sans-Serif;
	color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
	background-color: white;
	color: #28328c;
	float: left;
	font-size: 22px;
	font-weight: 900;
}
</style>


</head>
<body>
	<div class="topnav">
		<a class="active">PractoClone</a>
	<a href="login">Login</a>
	<a href="register">Register</a>
	<a href="http://localhost:8080/PractoClone/">Home</a>
	</div>

	<hr>
	<h2></h2>
	<!-- The form -->
	<form class="example" action="searchedSymp" method="get">
		<input type="text"
			placeholder="Search by disease or symptoms (For multiple search seprate by ',')"
			name="search">
		<button type="submit">
			<i class="fa fa-search"></i>
		</button>
	</form>

	<div>
		<div class="mt-2">
			<h2 class="text-center">Symptom Checker</h2>

			<table class="table caption-top">
				<caption class="text-center">Always consult your Doctor
					for proper treatment</caption>
				<thead class="thead-dark">
					<tr>
						<th scope="col">S.No</th>
						<th scope="col">Disease</th>
						<th scope="col">Signs & symptoms</th>
						<th scope="col">Incubation</th>
						<th scope="col">Communicability</th>
						<th scope="col">Prevention</th>
						<th scope="col">Medicine</th>
					</tr>
				</thead>
				<tbody>
					<%
						int nums = 1;
					%>
					<c:forEach items="${symptomsAndDisease }" var="symptomsAndDisease">

						<tr>
							<th scope="row"><p><%=nums%></p></th>
							<td><a href=${symptomsAndDisease.link }>${symptomsAndDisease.disease }</a></td>
							<td>${symptomsAndDisease.symptoms }</td>
							<td>${symptomsAndDisease.incubation }</td>
							<td>${symptomsAndDisease.comm }</td>
							<td>${symptomsAndDisease.prevention }</td>
							<td>${symptomsAndDisease.medicine }</td>
						</tr>
						<%
							nums++;
						%> 
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
