<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Bug Tracking Project</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
		<body class="subpage">
			<!-- Header -->
			<header id="header">
				
				<a href="index.html" class="logo">CimeXa</a>
				<nav class="right">
					<a href="index.html" class="button alt">Home</a>
					<a href="resourceLogin.jsp" class="button alt">Log out</a>
				</nav>
			</header>

		
	<!-----------header------->


       <section id="main" class="wrapper">
		<div class="inner">

		
			
			<form  action="editIssue.do">
			
			<div class="row uniform">
			<div class="9u 12u$(small)">
			<input type="text" name="issueno" id="query" value="" placeholder="Search by issue no" />
			</div>
			<div class="3u$ 12u$(small)">
			<input type="submit" value="Search" class="fit" />
			</div>
			</div>
			</form>
		


                      <h2>Issue List</h2>
						<div class="table-wrapper">
							<table class="alt">
							<thead>
								<tr>
									<th>Issue Number</th>
									<th>Project Name</th>
									<th>Issue Type</th>
									<th>Priority</th>
									<th>Resource Name</th>
									<th>Description</th>
									<th>Status</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="data" items="${issueDetails}">
									<tr>
										<td>${data.issueNo}</td>
										<td>${data.projectName}</td>
										<td>${data.type}</td>
										<td>${data.priority}</td>
										<td>${data.resourceEmail}</td>
										<td>${data.description}</td>
										<td>${data.status}</td>
									</tr>
								</c:forEach>
							</tbody>

						</table>
					</div>
				
				</div>
				</section>

	
	<!------footer------------------->

			<footer id="footer">
				<div class="inner">
					<h2>Get In Touch</h2>
					<ul class="actions">
						<li><span class="icon fa-phone"></span> <a href="#">(+91) 7407305159</a></li>
						<li><span class="icon fa-envelope"></span> <a href="https://mail.google.com/mail/u/0/#inbox">mdtoufiqueikbal@gmail.com</a></li>
						<li><span class="icon fa-map-marker"></span>Jspider,Rajaji Nagar,Bangalore,INDIA</li>
					</ul>
				</div>
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
