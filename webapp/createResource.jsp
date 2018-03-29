<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Creating Resources</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body>

	<!-- Header -->
	<header id="header"> <nav class="left"> <a href="#menu"><span>Menu</span></a>
	</nav> <a href="index.html" class="logo">CimeXa</a> <nav class="right">
	<a href="index.html" class="button alt">HOME</a> </nav> </header>

	<!-- Menu -->
	<nav id="menu">
	<ul class="links">
		<li><a href="index.html">Home</a></li>
	</ul>
	<ul class="actions vertical">
		<li><a href="login.html" class="button fit">admin Login</a></li>
	</ul>
	</nav>

	<!-- Banner -->


	<h1>Resources Information</h1>

	<form action="resourceSave.do" method="post">
		${resorceCreatemsg1}
		<div class="row uniform">
		<div class="6u 12u$(xsmall)">
		NAME :
		<input type="text" name="rname" placeholder="Name" />
		</div>
		
		<div class="6u 12u$(xsmall)">
		<div class="select-wrapper">
		DESIGNATION :
					<select name="designation" id="category">
						<option  value="">- Designation -</option>
						<option value="Developer">Developer</option>
						<option value="Tester">Tester</option>
						<option value="BusinessAnlysis">BusinessAnlysis</option>
						<option value="AssociateEngineer">AssociateEngineer</option>
					</select>
		 </div>
		 </div>
		
		<div class="6u 12u$(xsmall)">
		EMPLOYEE NO :
		<input type="text" placeholder="employeeNO" name="ecode" required />
		</div>
		
		<div class="6u 12u$(xsmall)">
		PROJECT NAME :
		<div class="select-wrapper">
		 <!-- <input type="text" placeholder="Project Name"  name="pname"  required /> -->
		 <select name="pname" id="category">
		     <c:forEach var="list" items="${l1}">
		     <option>${list}</option>
		      </c:forEach>
		  </select>
		 </div>
		 </div>
		
		<div class="6u 12u$(xsmall)">
		RESOURCE EMAIL :
		<input type="text" placeholder="employeeEmail"  name="email" required />
		</div>
		
		<div class="6u 12u$(xsmall)">
		MANAGER EMAIL :
		<input type="text" placeholder="managerEmail"  name="memail" required />
		</div>
		</div>
			<br/>
		<div class="6u 12u$(xsmall)">
			<input type="submit" value="Create Resource" />
		</div>
	</form>

	<footer id="footer">

	<h2>Get In Touch</h2>
	<ul class="actions">
		<li><span class="icon fa-phone"></span> <a href="#">(+91)
				7407305159</a></li>
		<li><span class="icon fa-envelope"></span> <a
			href="www.gmail.co.in">mdtoufiqueikbal@gmail.com</a></li>
		<li><span class="icon fa-map-marker"></span>Jspider,Rajaji
			Nagar,Bangalore,INDIA</li>
	</ul>

	                                        <ul class="icons">
												<li><a href="https://twitter.com/" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
												<li><a href="https://www.facebook.com/mdikbal99" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
												<li><a href="https://www.instagram.com/mdikbal99/" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
												<li><a href="https://github.com/mdikbal99" class="icon fa-github"><span class="label">Github</span></a></li>
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
