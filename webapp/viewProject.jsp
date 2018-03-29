  <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>   

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ResourceVIEW</title>
</head> 
    <body background="images/CimexaLogo.jpg">	

<!--sql connection and quarry  -->
  <sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/cimexa"
        user="root" password="root"
    />
     
    <sql:query var="listUsers"   dataSource="${myDS}">
        SELECT * FROM cimexa_practice_table;
	</sql:query>
		
		
		
		
			
<!-- createing table  -->

    <div align="center">
        <table border="2" cellpadding="14" bgcolor="#25f2f9">
            <caption><h2>List of project</h2></caption>
            <tr>
                <th>ProjectID</th>
                <th>project date</th>
                <th>project code</th>
                <th>project desc</th>
                <th>project eta</th>
				<th>project name</th>
				<th>project type</th>
				<th>project status</th>
				<!-- <td><a href="index.html">gohpome</a></td> -->
            </tr>
            <c:forEach var="user" items="${listUsers.rows}">
            <form action="changeStatus.do" method="post">
                <tr>
                    <td><c:out value="${user.project_id}" /><input type="hidden" name="id" value="${user.project_id}"/></td>
                    <td><c:out value="${user.pdate}" /></td>
                    <td><c:out value="${user.pcode}" /></td>
                    <td><c:out value="${user.pdesc}" /></td>
                    <td><c:out value="${user.peta}" /></td>
			   	    <td><c:out value="${user.pname}" /></td>
					<td><c:out value="${user.ptype}" /></td>
					<td><input type="submit" name="changeStatus" value="${user.pStatus}" />
					<input type="hidden" name="pstatus" value="${user.pStatus}"/></td>
                </tr>
                </form>
            </c:forEach>
        </table>
    </div>
    
    
    
    
    
</body>
</html>