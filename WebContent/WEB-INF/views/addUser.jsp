<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/
bootstrap.min.css">
<title>New Customer</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>User</h1>
				<h4>
					<a href="<spring:url value="/"></spring:url>">Home Page</a> |
					<a href="<spring:url value="/users/add"></spring:url>">Add User</a>
				</h4>
				<h5>
					<a href="<spring:url value="/languages/en"></spring:url>">English</a>
					| <a href="<spring:url value="/languages/fr"></spring:url>">French</a>
				</h5>

			</div>

		</div>
	</section>

	<section class="container">
		<form:form modelAttribute="newUser" class="form-horizontal">

			<fieldset>
				<legend>Add New User</legend>




				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="firstName">
						<spring:message code="addUser.form.userFirstName.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="firstName" path="firstName" type="text" class="form:input-large" />
						<form:errors path="firstName" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="lastName">
						<spring:message code="addUser.form.userLastName.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="lastName" path="lastName" type="text"
							class="form:input-large" />
							<form:errors path="lastName" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="email">
						<spring:message code="addUser.form.userEmail.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="email" path="email" type="text"
							class="form:input-large" />
							<form:errors path="email" cssClass="text-danger" />
							${messageNotification}
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="password">
						<spring:message code="addUser.form.userPassword.label" />
					</label>
					<div class="col-lg-10">
						<form:input id="password" path="password" type="password"
							class="form:input-large" />
							<form:errors path="password" cssClass="text-danger" />
					</div>
				</div>





				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Add" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</section>
</body>
</html>