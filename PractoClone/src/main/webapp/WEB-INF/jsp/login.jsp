<html>
<head>

<!-- Required meta tag  -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1,shrink-to-fit=no">


<!-- Bootstrap CSS  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href='<c:url value="/resources/css/my-test.css" />'
	rel="stylesheet">

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
		<a class="active">PractoClone</a> <a
			href="http://localhost:8080/PractoClone/sympcheck">SympCheck</a>
			<div> <a
			href="http://localhost:8080/PractoClone/">Home</a></div>

	</div>
 
	<hr>
	<h2></h2>
<body background="resources/images/bgpic.jpg" class="">

	<div class="container mt-4 mb-4">
		<div class="row">

			<div class="col-md-5 offset-md-4">
				<div class="card" style='border: 4px solid #28328c;'>
					<div class="card-body">
						<center>
							<img class="ha" height="275"
								src="resources/images/PractoClone.png" alt="Practo" />
						</center>
						<h4 class="text-center ">PractoClone Login</h4>

						<form id="loginForm" modelAttribute="login" action="loginProcess"
							method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Your Email</label><input
									name="email" type="text" class="form-control" id="email"
									aria-describedby="emailHelp" placeholder="Enter Email">
								<small id="emailHelp" class="form-text text-muted">We
									will never share your name</small>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Your Password</label><input
									name="password" type="password" class="form-control"
									id="password" aria-describedby="emailHelp"
									placeholder="Enter Password">
							</div>

							<div class="container text-center">
								<button type="submit" class="btn btn-primary">Submit</button>
							</div>

							<div class="container text-center mt-3">
								<h6>------------OR------------</h6>
							</div>

							<div class="container text-center mt-3">
								<a href="register"><h5>Don't have an account? Register
										now!</h5></a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</body>
</html>
