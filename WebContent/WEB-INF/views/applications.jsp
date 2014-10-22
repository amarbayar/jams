<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Applications</title>



</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Applications</h1>
				<p>List of all Application</p>
			</div>
		</div>
	</section>
	<section class="container">	
		<div class="row">
				<table id="example" class="table table-striped table-bordered" cellspacing="0" width="75%">
					<thead>
			            <tr>
			                <th>Company Id</th>
			                <th>Job Title</th>
			                <th>Status</th>
			                <th>Phase</th>
			                <th>Recruiter</th>
			                <th>History</th>
			                <th>Date</th>
			                <th>Refer</th>
			                <th>Action</th>			                
			            </tr>
	        		</thead>
	        		<tbody>
	        		<c:forEach items="${applications}" var = "application">
	            	<tr>
		                <td>${application.companyId}</td>
		                <td><a href="<spring:url value="/jobApplication/details/${application.id}" />"> ${application.jobTitile}</a></td>
		                <td>${application.status}</td>
		                <td>${application.phaseId}</td>
		                <td>${application.priority}</td>
		                <td>${application.recruiterId}</td>
		                <td>${application.applicationDate}</td>
		                <td>${application.refer}</td>
		                <td>
		                	<a href="<spring:url value="/jobApplication/edit/${application.id}" />">Edit</a> |
		                	<a href="<spring:url value="/jobApplication/delete/${application.id}" />">Delete</a>
		                </td>
		                
	            	</tr>
	            	</c:forEach>
            </tbody>
				</table>
		</div>
	</section>
</body>
</html>