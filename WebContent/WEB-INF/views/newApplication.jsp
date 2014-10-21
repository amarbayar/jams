<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Companies</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Customers</h1>
				<p>List of all Company</p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form modelAttribute="newApplication" class="form-horizontal">

			<fieldset>
				<legend>Add new Application</legend>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.companyName"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.jobTitle"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.status"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.phase"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.priority"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.recruiter"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.history"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.date"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.notes"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.refer"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>

<!-- 
application.form.companyName = fr Company Name
application.form.jobTitle = fr Job Title
application.form.status = fr Status
application.form.phase = fr Phase
application.form.priority = fr Priority
application.form.recruiter = fr Recruiter
application.form.history = fr History
application.form.date = fr Date
application.form.notes = fr  Notes
application.form.refer = fr Refer
 -->