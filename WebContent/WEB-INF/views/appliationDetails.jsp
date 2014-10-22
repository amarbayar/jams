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
		
				<table id="example" class="table table-striped table-bordered">
					    	<tr><th>Company</th><td>${applicationDetails.companyId}</td></tr>
			            	<tr><th>Job Title</th><td>${applicationDetails.jobTitile}</td></tr>
			                <tr><th>Status</th><td>${applicationDetails.phaseId}</td></tr>
			                <tr><th>Phase</th><td>${applicationDetails.priority}</td></tr>
			                <tr><th>Recruiter</th><td>${applicationDetails.recruiterId}</td></tr>			                
			                <tr><th>Date</th><td>${applicationDetails.applicationDate}</td></tr>
			                <tr><th>Refer</th><td>${applicationDetails.refer}</td></tr>	                
			</table>
		</div>
		
		



		<h3>History</h3>



		<div class="row">
				<table id="example" class="table table-striped table-bordered">
					<thead>
			            <tr>
			                <th>Phase</th>
			                <th>Modification Date</th>			                
			            </tr>
	        		</thead>
	        		<tbody>
	        		<c:forEach items="${histories}" var="history">
	            	<tr>
		                <td>${history.phase_id}</td>
		                <td>${history.phase_changed_date}</td>
	            	</tr>
	            	</c:forEach>
	            	
            	</tbody>
			</table>
		</div>









		
		
	</section>
</body>
</html>