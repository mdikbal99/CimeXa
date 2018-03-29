<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<title>Creating Project</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<nav class="left">
					<a href="#menu"><span>Menu</span></a>
				</nav>
				<a href="index.html" class="logo">CimeXa</a>
				<nav class="right">
					<a href="index.html" class="button alt"> ${success_message} </a>
					
				</nav>
			</header>

		<!-- Menu -->
			<nav id="menu">
				<ul class="links">
					<li><a href="index.html">Home</a></li>
					<li><a href="generic.html">Generic</a></li>
					<li><a href="elements.html">Elements</a></li>
				</ul>
				<ul class="actions vertical">
					<li><a href="login.html" class="button fit">admin Login</a></li>
				</ul>
			</nav>

		<!-- Banner -->
	
	
	<h1>Project Info</h1>

<form method="post" action="createProject.do">			
   <div class="row uniform">
     <div class="6u 12u$(xsmall)">
     <input type="text"  name="pname" id="name" value="${val.pname}" placeholder="Project Name" />
     </div>
    <div class="6u 12u$(xsmall)">
    <input type="text"   placeholder="Project Type"  name="ptype" required/>
    </div>
    <div class="6u 12u$(xsmall)">
    <input type="text"   placeholder="Project CODE"  name="pcode" required/>
    </div>
    <div class="6u 12u$(xsmall)">
    <input type="text"   placeholder="Project Description"  name="pdesc" required/>
    </div>
    <div class="6u 12u$(xsmall)">
    <input type="text"   placeholder="Project ETA"  name="peta" required/>
    </div>
 
    <input type="date" name="pdate" placeholder="dd/mm/yr"><br/>
  
 </div>
 <br/>
   <div class="4u 12u$(small)">
   
  <input type="radio" id="priority-low" name="pstatus" value="Active" checked>
	<label for="priority-low">Project Active</label>
	</div>
	<div class="4u 12u$(small)">
	<input type="radio" id="priority-normal" name="pstatus" value="deactive">
	<label for="priority-normal">Project Deactive</label>
	</div>
	<div class="4u$ 12u$(small)">
    <input type="radio" id="priority-high" name="pstatus" value="delete">
	<label for="priority-high">Project Delete</label>
	</div>
  
  <input type="submit" onclick="myFunction()" value="Create Project">
  <div class="clear"> </div>
</form>

			<footer id="footer">
				
					<h2>Get In Touch</h2>
					<ul class="actions">
						<li><span class="icon fa-phone"></span> <a href="#">(+91) 7407305159</a></li>
						<li><span class="icon fa-envelope"></span> <a href="www.gmail.co.in">mdtoufiqueikbal@gmail.com</a></li>
						<li><span class="icon fa-map-marker"></span>Jspider,Rajaji Nagar,Bangalore,INDIA</li>
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
