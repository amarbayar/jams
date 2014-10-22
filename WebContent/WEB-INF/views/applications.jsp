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
					<th>Action</th>			                
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${applications}" var = "application">
				<tr>
				<td>
				<c:forEach items="${companies}" var="company">
				<c:if test="${company.id == application.companyId}">
				${company.name}
				</c:if>
			</c:forEach>
			</td>

			<td><a href="<spring:url value="/jobApplication/details/${application.id}" />"> ${application.jobTitile}</a></td>
			<td>${application.status}</td>
			<td>
			<c:forEach items="${phases}" var="phase">
				<c:if test="${phase.phase_id == application.phaseId}">
				${phase.phase_type}
				</c:if>
			</c:forEach>
			
			
			${application.phaseId}
			</td>
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
<%@ include file="bottom.jsp" %>