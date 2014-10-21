<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>New Event</title>
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
</head>
<body>
	<form:form modelAttribute="newEvent" class="form-horizontal">
		<label class="control-label col-lg-2 col-lg-2" for="event_title">Event Title: </label>
		<form:input id="event_title" path="event_title" path="event_title" class="input-large"/>
		
		<label class="control-label col-lg-2 col-lg-2" for="event_desc">Event Title: </label>
		<form:input id="event_desc" path="event_desc" path="event_desc" class="input-large"/>
		
		<label class="control-label col-lg-2 col-lg-2" for="event_date">Event Title: </label>
		<form:input id="event_date" path="event_date" path="event_date" class="input-large"/>
		
		<label class="control-label col-lg-2 col-lg-2" for="event_time">Event Title: </label>
		<form:input id="event_time" path="event_time" path="event_time" class="input-large"/>
		
		<label class="control-label col-lg-2 col-lg-2" for="event_appid">Event Title: </label>
		<form:select id="event_appid" path="event_appid" path="event_appid" class="input-large">
			<option>Application #1</option>
			<option>Application #2</option>
			<option>Application #3</option>
			<option>Application #4</option>
			<option>Application #5</option>
		</form:select>
	</form:form>
</body>
</html>