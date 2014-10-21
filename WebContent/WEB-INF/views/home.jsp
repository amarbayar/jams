<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Home Page</title>
</head>
<body>
<h4>
		<a href="<spring:url value="/"></spring:url>">Home Page</a> |
		<a href="<spring:url value="/company/add"></spring:url>">Add Company</a> |		
		<a href="<spring:url value="/users/login"></spring:url>">Login</a> | 
		<a href="<spring:url value="/users/add"></spring:url>">Sign-UP</a> |
		<a href="<spring:url value="/users/"></spring:url>">All Users</a>
		
		
</h4>

<h5>
		<a href="<spring:url value="/languages/en"></spring:url>">English</a> |
		<a href="<spring:url value="/languages/fr"></spring:url>">French</a>
</h5>

<h3> ${messageNotification}</h3>

</body>
</html>