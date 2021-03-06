<!DOCTYPE html> 
 
 <html lang="en">
<title>W3.CSS Template</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:100px}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.jsp" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="login.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Log in</a>
    <a href="registration.jsp" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" >Sign up</a>
   
  </div>

  <!-- Navbar on small screens -->
  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 4</a>
  </div>
</div>

<!-- Header -->
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo"><img src="AllfoRentlogo.png" alt="Image not found " width="300" height="200" ></h1>
  <a href="registration.jsp"><button class="w3-button w3-black w3-padding-large w3-large w3-margin-top" >Get Started</button></a>
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>AllfoRent</h1>
      <h5 >We Provide Service Related to House Rental </h5><br>
      <p class="w3-text-grey"><h3>Find Houses Across 7 Continents*</h3><br   /><br   /><br   /><br   /><br   />
      *Above Statement is Subject To Market Risks And Availability
      </p>
    </div>

    <div class="w3-third w3-center">
      <!-- <i class="fa fa-anchor w3-padding-64 w3-text-red"></i>-->
      <img src="Hompage house.jpg" alt="Image not found " width="500" height="400" >
    </div>
  </div>
</div>


<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <!--<i class="fa fa-coffee w3-padding-64 w3-text-red w3-margin-right"></i>-->
      <img src="Hompage house2.jpg" alt="Image not found " width="500" height="400" >
    </div>

    <div class="w3-twothird">
      <h1 align="right" >AllfoRent</h1>
      <h5 class="w3-padding-32"></p>
    </div>
  </div>
</div>

<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
    <h1 class="w3-margin w3-xlarge">Quote of the day: " Either It Is 'AllfoRent' Or None Of It Is "</h1>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
 </div>
 <p>Powered by <a href="https://github.com/S-Harshit" target="_blank">S-Harshit</a></p>
</footer>

<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html>
 
 
 
 
 
 
 
 
 
 
 
 
 
 <!--  
  <html>
  <head>
  <link rel="stylesheet" type="text/css" href="Hompage.css">
  <style>
img {
  width: 40%;
  height: 40%;
}
  </style>
  </head>
  
  <body>
  
  <% 
  		if(session.getAttribute("owner") == null && session.getAttribute("customer") == null)  { 
  			out.print("NOT LOGGED IN");
  		}
  		else {
  		if(session.getAttribute("customer") != null) {
  		out.print("Logged in as \n" + session.getAttribute("customer")+"\n");
  		}
  		else {
  		out.print("Logged in as \n" + session.getAttribute("customer")+"\n");
  		}
  	 	out.print("Welcome\n" + session.getAttribute("Name")+"\n");
  		}
  %>
  
   <% 
  		if(session.getAttribute("owner") == null && session.getAttribute("customer") == null)  { 
  			out.print("NOT LOGGED IN");
  		}
  		else {
  		if(session.getAttribute("customer") != null) {
  		out.print("Logged in as \n" + session.getAttribute("customer")+"\n");
  		}
  		else {
  		out.print("Logged in as \n" + session.getAttribute("customer")+"\n");
  		}
  	 	out.print("Welcome\n" + session.getAttribute("Name")+"\n");
  		}
  %>
  
  
  <div class="header">
  <a href="index.jsp" class="logo"><img src="AllfoRent.png" alt="Logo Image Not Found"></a>
  <div class="header-right">
    <a class="active" href="login.jsp">Login</a>
    <a class="active" href="registration.jsp">Register</a>
	<a class="active" href="logout">logout</a> 
  </div>
  </div>

  
  </html>    
 
-->

   
   
   
   
   
   
