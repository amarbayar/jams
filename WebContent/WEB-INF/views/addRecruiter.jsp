<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/
bootstrap.min.css">
<title>New Recruiter</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Recruiter</h1>
				<h4>
		<a href="<spring:url value="/"></spring:url>">Home Page</a> |
		<a href="<spring:url value="/recuiters/add"></spring:url>">Add Recruiter</a>
</h4>
				<h5>
		<a href="<spring:url value="/languages/en"></spring:url>">English</a> |
		<a href="<spring:url value="/languages/fr"></spring:url>">French</a>
</h5>
			
			</div>
			
		</div>
	</section>

	<section class="container">
		<form:form modelAttribute="newRecruiter" class="form-horizontal">

			<fieldset>
				<legend>Add new recruiters</legend>




				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="firstName">
						First Name
					</label>
				
					<div class="col-lg-10">
						<form:input id="firstName" path="firstName" type="text"
							class="form:input-large" />
							<form:errors path="firstName" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="lastName">
						Last Name</label>
					<div class="col-lg-10">
						<form:input id="lastName" path="lastName" type="text"
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="address">
						Address</label>
					<div class="col-lg-10">
						<form:input id="address" path="address" type="text"
							class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="email">Email</label>
					<div class="col-lg-10">
						<form:input id="email" path="email" type="text"
							class="form:input-large" />
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