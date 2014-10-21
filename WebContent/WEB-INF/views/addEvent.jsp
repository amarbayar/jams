<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Event</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Events</h1>
			</div>
		</div>
	</section>
	<form:form modelAttribute="newEvent" action="new" method="post" class="form-horizontal">
		<fieldset>
				<legend>New Schedule:</legend>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="event_title">
					<spring:message code="addEvent.form.event_title.label"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="event_title" path="event_title" type="text" class="form:input-large" />
						<form:errors path="event_title" cssClass="text-danger" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="event_desc">
						<spring:message code="addEvent.form.event_desc.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="event_desc" path="event_desc" type="text" class="form:input-large" />
					</div>
				</div>
  
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="event_date">
						<spring:message code="addEvent.form.event_date.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="event_date" path="event_date" type="date" class="form:input-large" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="event_time">
						<spring:message code="addEvent.form.event_time.label"/>
					</label>
					<div class="col-lg-10">
						<form:input id="event_time" path="event_time" type="time" class="form:input-large" />
					</div>
				</div>
				<
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="event_appid">
						<spring:message code="addEvent.form.event_appid.label"/>
					</label>
					<div class="col-lg-10">
						<form:select id="event_appid" path="event_appid" class="input-large">
							<option value="1">Application #1</option>
							<option value="2">Application #2</option>
							<option value="3">Application #3</option>
							<option value="4">Application #4</option>
							<option value="5">Application #5</option>
						</form:select>
					</div>
				</div>
 
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Schedule" />
					</div>
				</div>
				
			</fieldset>
	</form:form>
</body>
</html>