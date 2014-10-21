<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Customers</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Customers</h1>
				<p>List of all Customers</p>
			</div>
		</div>
	</section>
	<section class="container">	
		<div class="row">
			<c:forEach items="${users}" var = "user">
				<div class="col-sm-6 col-md-3" style="padding-bottom: 15px">
					<div class="thumbnail">
						<div class="caption">
							<h3>Id: ${user.id}</h3>
							<p><spring:message code="addUser.form.userFirstName.label" />: ${user.firstName}</p>
							<p><spring:message code="addUser.form.userLastName.label" />: ${user.lastName}</p>
							<p><spring:message code="addUser.form.userEmail.label" />: ${user.email}</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</section>
</body>
</html>