<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Job Schedule Portal</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Welcome to Job Schedule Portal</h1>
				<p>Manage your schedule as like yours</p>
			</div>
		</div>
	</section>
	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-4">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title">Please sign in</h3>
					</div>
					<div class="panel-body">

						<form:form modelAttribute="loginForm" action="login"
							class="form-horizontal">
							<fieldset>
					
				<table>
					<tr>
						<td><spring:message code="addUser.form.userEmail.label" /></td>
						<td><form:input id="email" path="email" type="eamil"/></td>
						<td><form:errors path="email" cssClass="text-danger" /></td>
					</tr>
										
										

					<tr>
						<td><spring:message code="addUser.form.userPassword.label" /></td>
						<td><form:input id="password" path="password" type="password"/></td>
						<td><form:errors path="password" cssClass="text-danger" /></td>
					</tr>


				</table>
								
								<div class="form-group">
									
									
								</div>
								<input class="btn btn-lg btn-success btn-block" type="submit"
									value="Login">
							</fieldset>
						</form:form>
						<!--h4>
							<a href="<spring:url value="/users/add"></spring:url>">Sign-UP</a>
						</h4-->

					</div>
				</div>
			</div>
		</div>
	</div>
</body>