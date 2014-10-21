<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	<div class="jumbotron">
		<div class="container">
			<h1>Events</h1>
			<p>Your scheduled events:</p>
		</div>
	</div>
	<div class="container">
		<div class="table-responsive">
	    	<table class="table table-bordered table-hover table-striped">
		        <thead>
			        <tr>
				        <th>Title</th>
				        <th>Date</th>
				        <th>Time</th>
				        <th>Description</th>
				        <th>AppID</th>
				        <th>Status</th>
			        </tr>
		        </thead>
		        <tbody>
					<c:forEach items="${events}" var = "evt">
				        <tr>
							<td>${evt.event_title}</td>
							<td>${evt.event_desc}</td>
							<td>${evt.event_date}</td>
							<td>${evt.event_time}</td>
						    <td>${evt.event_appid}</td>
						    <td><span class="label label-warning">Status</span></td>
						    <td><button id="Edit" class="btn btn-info btn-sm">E</button></td>
						    <td><button id="Delete" class="btn btn-danger btn-sm">X</button></td>
						</tr>
					</c:forEach>
		        </tbody>
	        </table>
		</div>
	</div>
	<form action="events/new">
		<div class="form-group">
			<div class="col-lg-offset-2 col-lg-10">
				<input type="submit" id="btnAdd" class="btn btn-success" value="New Schedule" />
			</div>
		</div>
	</form>
</body>
</html>