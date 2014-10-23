<%@ include file="_taglibs.jsp" %>
<html>
<head>
	<%@ include file="_link_href.jsp" %>
	<title>New Company</title>	
</head>
 
 <body class="skin-blue">
 	<%@ include file="_header.jsp" %>
 	<div class="wrapper row-offcanvas row-offcanvas-left">
 		<%@ include file="_navigation.jsp" %>
 		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Application Detail
				</h1>
				<ol class="breadcrumb">
					<li><a href="/FinalProject/home"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="/FinalProject/jobApplication">Applications</a></li>
					<li class="active">Detail</li>
				</ol>
				
			</section>
			<!-- Plug main content here -->
			<!-- ====================== -->
			<section class="container">
			<br><br>
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
			</section><!-- right col -->
			<!-- ====================== -->
			<!-- ====================== -->
			
		</aside>
	</div>
</body>        
<%@ include file="_scripts.jsp" %>
<%@ include file="_footer.jsp" %>
</body>
</html>