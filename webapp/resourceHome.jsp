<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome ${msg}</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="subpage">

	<!-- Header -->
	<header id="header"> <nav class="left"> <a href="#menu"><span>Menu</span></a>
	</nav> <a href="index.html" class="logo">CimeXa</a> <nav class="right">
	<a href="index.html" class="button alt">HOME</a> </nav> </header>

	<!-- Menu -->
	<nav id="menu">
	<ul class="links">
		<li><a href="index.html">Home</a></li>
		<li><a href="generic.html">Generic</a></li>
		<li><a href="elements.html">Elements</a></li>
	</ul>
	<ul class="actions vertical">
		<li><a href="logindo.html" class="button fit">Login</a></li>
	</ul>
	</nav>
	<!-- Main -->
	<section id="banner"> 
	<header class="align-center">
	<h1 align="center" style="color: red; margin-bottom: 20px">
		Welcome "<u> ${msg}</u>"
	</h1>

	</header>

	
		<table>
		<tr>
		    	 <td><h2><a href="getAllData.do" >Create Issue</a></h2></td>
				<td><h2><a href="issue.do">View Issue</a></h2></td>
			</tr>
			<tr>
				<td><a href="getAllData.do" ><img src="images/cimexa.png" ></a></td>
				<td><a href="issue.do"><img src="images/Bugs.jpg" ></a></td>
			</tr>
			
			
		</table>
	</div>
	</section>


	<!-- Footer -->
	<footer id="footer">
	<div class="inner">
		<h2>Get In Touch</h2>
		<ul class="actions">
			<li><span class="icon fa-phone"></span> <a href="#">(+91)
					7407305159</a></li>
			<li><span class="icon fa-envelope"></span> <a
				href="www.gmail.co.in">mdtoufiqueikbal@gmail.com</a></li>
			<li><span class="icon fa-map-marker"></span>Jspider,Rajaji
				Nagar,Bangalore,INDIA</li>
		</ul>
	</div>
	<ul class="icons">
		<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
		<li><a href="www.facebook.com/mdikbal99" class="icon fa-facebook"><span
				class="label">Facebook</span></a></li>
		<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
		<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
	</ul>
	</footer>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>