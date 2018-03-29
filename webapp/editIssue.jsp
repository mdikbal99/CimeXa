<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Creating Project</title>
<!-- <meta charset="utf-8" /> -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>

<body>
	<!-----------header------->

	<header id="header"> 
	<nav class="left"> 
	<a href="#menu"><span>Menu</span></a>
	</nav> 
	<a href="index.html" class="logo">CimeXa</a>
	 <nav class="right">
	 <a href="index.html" class="button alt">Home</a>
	<a href="resourceLogin.jsp" class="button alt">Log out </a> 
	</nav>
	 </header>

	<!-- Menu -->
	<nav id="menu">
	<ul class="links">
		<li><a href="index.html">Home</a></li>
		<li><a href="https://www.facebook.com/mdikbal99">Know the
				Dveloper</a></li>

	</ul>
	<ul class="actions vertical">
		<li><a href="login.html" class="button fit">admin Login</a></li>
	</ul>
	</nav>
	
	<!-----------main contains------->
	<center class="actions vertical">
	                  <h1>View and Update Issue</h1>
                      </center>
	
	<div class="common">
		<div class="container">
			<form class="actions vertical"  action="updateIssue.do?id=${issue.id}" method="post">
				<div class="form-group">
					<label for="project" class="col-sm-3 control-label">Project</label>
					<div class="col-sm-9">
						<select id="project" class="form-control" name="projectName" readonly>
							<option value="${issue.projectName}">${issue.projectName}</option>
						</select>
					</div>
				</div>

				<div class="form-group">
					<label for="type" class="col-sm-3 control-label">Type</label>
					<div class="col-sm-9">
						<select id="type" class="form-control" name="type" readonly>
							<option value="${issue.type}">${issue.type}</option>
						</select>
					</div>
				</div>
				<!-- /.form-group -->

				<div class="form-group">
					<label for="priority" class="col-sm-3 control-label">Priority</label>
					<div class="col-sm-9">
						<select id="priority" class="form-control" name="priority" readonly>
							<option value="${issue.priority}">${issue.priority}</option>
						</select>
					</div>
				</div>
				<!-- /.form-group -->



				<div class="form-group">
					<label for="description" class="col-sm-3 control-label">Description</label>
					<div class="col-sm-9">
						<textarea rows="5" cols="70" id="description" name="description" readonly>${issue.description}</textarea>
					</div>
				</div>
				
				
				<div class="form-group">
					<label for="assignProject" class="col-sm-3 control-label">Assign To</label>
					<div class="col-sm-9">
						<select id="assignProject" class="form-control" name="resourceEmail" readonly>
							<option value="${issue.resourceEmail}">${issue.resourceEmail}</option>
						</select>
					</div>
				</div>
				
				<div class="form-group">
					<label for="status" class="col-sm-3 control-label">Status</label>
					<div class="col-sm-9">
						<select id="status" class="form-control" name="status">
							<option value="${issue.status}">${issue.status}</option>
							<option value="reject">reject</option>
							<option value="completed">completed</option>
						</select>
					</div>
				</div>
				<!-- /.form-group -->
				
				
				
				<br /> <br />
				
					    <button type="reset" >Reset</button>
						<button type="submit" class="btn btn-primary btn-block">Update</button>
				
			</form>
			<!-- /form -->
		</div>
	</div>
	<!-----common--->
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
		<li><a href="https://twitter.com/" class="icon fa-twitter"><span
				class="label">Twitter</span></a></li>
		<li><a href="https://www.facebook.com/mdikbal99"
			class="icon fa-facebook"><span class="label">Facebook</span></a></li>
		<li><a href="https://www.instagram.com/mdikbal99/"
			class="icon fa-instagram"><span class="label">Instagram</span></a></li>
		<li><a href="https://github.com/mdikbal99" class="icon fa-github"><span
				class="label">Github</span></a></li>
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
