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
					Recruiters
				</h1>
				<ol class="breadcrumb">
					<li><a href="/FinalProject/home"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">View Recruiters</li>
				</ol>
				
			</section>
			<!-- Plug main content here -->
			<!-- ====================== -->
			<section class="container">
			<br><br>
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
					<form action="/FinalProject/recruiters/add">
						<div class="form-group">
							<div class="pull-right">
								<input type="submit" id="btnAdd" class="btn btn-success" value="Add Recruiter" />
							</div>
						</div>
					</form>
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
