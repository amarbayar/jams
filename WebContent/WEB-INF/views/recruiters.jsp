<%@ include file="top.jsp" %> 
<section class="container">	
	<div class="row">
	<table id="example" class="table table-striped table-bordered" cellspacing="0" width="75%">
		<thead>
			<tr>
				<th>Name</th>
				<th>Information</th>
				<th>URL</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${recruiters}" var = "recruiter">
				<tr>
					<td>${recruiter.firstName}</td>
					<td>${recruiter.lastName}</td>
					<td>${recruiter.address}</td>
					<td>${recruiter.email}</td>
					<td><a href="delete?cid=${recruiter.id}">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</section>
<%@ include file="bottom.jsp" %>