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
		<a href="<spring:url value="/company/add"></spring:url>">Add Company</a>
		<a href="<spring:url value="/event/add"></spring:url>">Add Event</a> |
		<a href="<spring:url value="/recruiters/add"></spring:url>">Add Recruiter</a>
		
		
</h4>

<h5>
		<a href="<spring:url value="/languages/en"></spring:url>">English</a> |
		<a href="<spring:url value="/languages/fr"></spring:url>">French</a>
</h5>

</body>
</html>