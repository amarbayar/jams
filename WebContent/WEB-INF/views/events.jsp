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
					Events
				</h1>
				<ol class="breadcrumb">
					<li><a href="/FinalProject/home"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">View Events</li>
				</ol>
				
			</section>
			<!-- Plug main content here -->
			<!-- ====================== -->
			<section class="container">
			<br><br>
			    <div class="container">
					<div class="table-responsive">
				    	<table class="table table-bordered table-hover table-striped">
					        <thead>
						        <tr>
							        <th>Title</th>
							        <th>Description</th>							        
							        <th>Date</th>
							        <th>Time</th>
							        <th>AppID</th>
							        <th>Status</th>
						        </tr>
					        </thead>
					        <tbody>
								<c:forEach items="${events}" var = "evt">
							        <tr>
										<td><strong>${evt.event_title}</strong></td>
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
				<form action="/FinalProjct/events/add">
					<div class="form-group">
						<div class="pull-right">
							<input type="submit" id="btnAdd" class="btn btn-success" value="Add Schedule" />
						</div>
					</div>
				</form>
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
