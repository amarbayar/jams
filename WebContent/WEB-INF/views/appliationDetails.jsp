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
		
					   
					    	
			            	Job Title: <b>${applicationDetails.jobTitile}</b>
			            	<br />
			            	Status: <b>${applicationDetails.status}</b>
			                <br />
			                Priority: <b>${applicationDetails.priority}</b>
			                <br />
			               
			                	
			                Date: <b>${applicationDetails.applicationDate}</b>
			                <br>
							Refer: <b>${applicationDetails.refer}</b>	                
			
		</div>
		
		



		<h3>History</h3>



		<div class="row">
				<table id="example" class="table table-striped table-bordered">
					<thead>
			            <tr>
			                <th>Phase Status</th>
			                <th>Schedule</th>			                
			            </tr>
	        		</thead>
	        		<tbody>
	        		<c:forEach items="${histories}" var="history">
	            	<tr>
		                <td>
		                	
		                	
								<c:forEach items="${phases}" var="phase">
									<c:if test="${phase.phase_id == history.phase_id}">
										${phase.phase_type}
									</c:if>
								</c:forEach>
		                	
		                	
		                </td>
		                <td>${history.phase_changed_date}</td>
	            	</tr>
	            	</c:forEach>
	            	
            	</tbody>
			</table>
		</div>


		<h3>Recruiter Details</h3>



		<div class="row">
				<table id="example" class="table table-striped table-bordered">
					<thead>
			            <tr>
			                <th>Recruiter Name</th>
			                <th>E-mail</th>
			                <th>Address</th>
			            </tr>
	        		</thead>
	        		<tbody>
									<c:forEach items="${recruiters}" var="recruiter">			
										<c:if test="${recruiter.id == applicationDetails.recruiterId}">
											<tr><td>${recruiter.firstName} ${recruiter.lastName}</td>
											<td>${recruiter.email}</td>
											<td>${recruiter.address}</td>
											</tr>
										</c:if>
									</c:forEach>
	            	
            	</tbody>
			</table>
		</div>


		<h3>Company Details</h3>



		<div class="row">
				<table id="example" class="table table-striped table-bordered">
					<thead>
			            <tr>
			                <th>Company</th>
			                <th>Company Information</th>			                
			            </tr>
	        		</thead>
	        		<tbody>
								<c:forEach items="${companies}" var="company">
									<c:if test="${company.id == applicationDetails.companyId}">
										<td><a href="${company.url}">${company.name}</a></td>
										<td>${company.information}</td>										
									</c:if>
								</c:forEach>
		                	
		                	
		                	
            	</tbody>
			</table>
		</div>





		
		
	</section>
</body>
</html>