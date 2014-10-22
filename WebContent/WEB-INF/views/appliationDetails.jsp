<%@ include file="top.jsp" %> 
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
			            </tr>
	        		</thead>
	        		<tbody>
	        		
	            	<tr>
		                <td>${applicationDetails.companyId}</td>
		                <td>${applicationDetails.jobTitile}</td>
		                <td>${applicationDetails.status}</td>
		                <td>${applicationDetails.phaseId}</td>
		                <td>${applicationDetails.priority}</td>
		                <td>${applicationDetails.recruiterId}</td>
		                <td>${applicationDetails.applicationDate}</td>
		                <td>${applicationDetails.refer}</td>		                		                
	            	</tr>
	            	
            	</tbody>
			</table>

		</div>
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
	        		
	            	<tr>
		                <td>${applicationDetails.companyId}</td>
		                <td><a href="<spring:url value="/jobApplication/details/${application.id}" />"> ${application.jobTitile}</a></td>
		                <td>${applicationDetails.status}</td>
		                <td>${applicationDetails.phaseId}</td>
		                <td>${applicationDetails.priority}</td>
		                <td>${applicationDetails.recruiterId}</td>
		                <td>${applicationDetails.applicationDate}</td>
		                <td>${applicationDetails.refer}</td>
		                <td>${applicationDetails.refer}</td>		                
	            	</tr>	            	
            	</tbody>
			</table>			
		</div>	
	</section>
<%@ include file="bottom.jsp" %>