<html>
<head>
<style>

body{

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

div.even {
 height: 20em;
  background-color: #28328c;
}
div.odd {
 height: 10em;

}

.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 100%;
}

td.mid {
  float: right;
  background-color: #008CBA;
  font: Sans-Serif;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 20px;
}


</style>
</head>
<body>
<div class="topnav">
  <a class="active" href="#home">PractoClone</a>
  <a href="http://localhost:8080/PractoClone/login">Login</a>
  <a href="http://localhost:8080/PractoClone/register">Register</a>
  <a href="http://localhost:8080/PractoClone/contact">Contact</a>
  <a href="http://localhost:8080/PractoClone/sympcheck">SympCheck</a>
</div>
<hr>
<h2></h2>
<div class="even">
<table>
<tr>
<td>
<img src="resources/images/image.JPG" height="280px" class="center">
</td>
<tr>
</table>
</div>

<div class="odd">
<table>
<tr align = "center">
<td class="mid" class="center">
 <a style= "color:white" href="http://localhost:8080/PractoClone/sympcheck">Search with Symptoms</a>
</td>
<td></td>
<td class="mid" class="center">
 <a style= "color:white" href="register">Start Consulting</a>
</td>
</tr>
</table>

</div>
<div class="even">
<img src="resources/images/midbar.JPG" height="280px" class="center">
</div>
<div class="odd"></div>
<img src="resources/images/secondimg.JPG" height="280px" class="center">
</body>
</html>
