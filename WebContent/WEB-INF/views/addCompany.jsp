<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Add Company</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Company</h1>
				<h4>
		<a href="<spring:url value="/"></spring:url>">Home Page</a>
</h4>
				<h5>
		<a href="<spring:url value="/languages/en"></spring:url>">English</a> |
		<a href="<spring:url value="/languages/fr"></spring:url>">French</a>
</h5>
			
			</div>
			
		</div>
	</section>

	<section class="container">
		<form:form modelAttribute="newCompany" class="form-horizontal">

			<fieldset>
				<legend>Add new company</legend>



				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="addCompany.form.name.label"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="information">
						<spring:message code="addCompany.form.information.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="information" path="information" type="text" class="form:input-large" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="age">
						<spring:message code="addCompany.form.url.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="url" path="url" type="text" class="form:input-large" />
					</div>
				</div>
				
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Add Company" />
					</div>
				</div>
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>