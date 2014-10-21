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
		<a href="<spring:url value="/customers/add"></spring:url>">Add Customer</a>
		<a href="<spring:url value="/company/add"></spring:url>">Add Company</a>
</h4>

<h5>
		<a href="<spring:url value="/languages/en"></spring:url>">English</a> |
		<a href="<spring:url value="/languages/fr"></spring:url>">French</a>
</h5>

</body>
</html>