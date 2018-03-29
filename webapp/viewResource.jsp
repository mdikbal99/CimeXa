<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resource Table View</title>
</head>


 <body background="images/cmx.png">
	<sql:setDataSource var="myDS" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/cimexa" user="root" password="root" />

	<sql:query var="listUsers" dataSource="${myDS}">
        SELECT * FROM resource_table;
		</sql:query>
 




	<div align="center">
		<table border="1" cellpadding="10" bgcolor="#52e2f2">
				<caption><h1>Resource Table</h1></caption>
			<tr>
				<th>ResourceId</th>
				<th>ResourceName</th>
				<th>R_Designation</th>
				<th>R_EmployeeNO</th>
				<th>R_Project_Name</th>
				<th>R_Email</th>
				<th>R_Manager_email</th>
				<!-- <th>R_Password</th> -->
				
				<td>Operation</td>
			</tr>
			
			<%--  <c:forEach var="list" items="${view}">
			 <form action="viewResource.do" method="post">
		     <td> ${list}</td>
		     </tr>
		     </form>
		      </c:forEach> --%>


		<c:forEach var="user" items="${listUsers.rows}">
				<form action="editResource.do" method="post">
					<tr>
						<td><c:out value="${user.resource_id}" /><input
							type="hidden" name="rid" value="${user.resource_id}" /></td>
						<td><c:out value="${user.resource_Name}" /><input
							type="hidden" name="rname" value="${user.resource_Name}" /></td>
						<td><c:out value="${user.resource_designation}" /><input
							type="hidden" name="designation"
							value="${user.resource_designation}" /></td>
						<td><c:out value="${user.emp_No}" /><input type="hidden"
							name="ecode" value="${user.emp_No}" /></td>
						<td><c:out value="${user.project_Name}" /><input
							type="hidden" name="pname" value="${user.project_Name}" /></td>
						<td><c:out value="${user.resource_Email}" /><input
							type="hidden" name="email" value="${user.resource_Email}" /></td>
						<td><c:out value="${user.manager_Email}" /><input
							type="hidden" name="memail" value="${user.manager_Email}" /></td>
							<td><c:out value="${user.r_password}" /><input
							type="hidden" name="password" value="${user.r_password}" /></td>

						<td><input type="submit" name="edit" value="Edit"></td>
					</tr>
				</form>
			</c:forEach>
		</table>
	</div>
</body>
</html>