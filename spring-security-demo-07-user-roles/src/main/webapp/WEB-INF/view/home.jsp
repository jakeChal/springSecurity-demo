<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html> 

<head>
	<title>Jacob's home page</title>
</head>

<body>
	<h3> Welcome to Luv2Code!! - Mofo 3</h3>
	<hr>
	<h2> Just starting out!!</h2>

	<hr>
	<!--  Display username and role  -->
	<p>
		User: <security:authentication property="principal.username"/>
		<br> <br>
		Role: <security:authentication property="principal.authorities"/>
	</p>
	
	<hr> 
	
	<!--  Add a point to /leaders  this is for the managers-->
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership meeting</a>
		(only for manager peeps)
	</p>
	<hr>
	<!-- Add logout button -->
	<form:form action="${pageContext.request.contextPath}/logout"
				method="POST">
				<input type="submit" value="Logout"/>
	</form:form>
</body>
</html>