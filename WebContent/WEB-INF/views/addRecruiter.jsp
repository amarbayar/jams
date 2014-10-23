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
					New Recruiter
				</h1>
				<ol class="breadcrumb">
					<li><a href="/FinalProject/home"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">New Recruiter</li>
				</ol>
				
			</section>
			<!-- Plug main content here -->
			<!-- ====================== -->
			<section class="container">
			<br><br>
			    <form:form modelAttribute="newRecruiter" class="form-horizontal" id="form_fill">
						<div class="form-group">
							<div class="row">
							<label class="control-label col-lg-2 col-lg-2" for="firstName">
								<spring:message code="addRecruiter.form.recuiterfirstName.label" />
							</label>
						
							<div class="col-lg-8">
								<form:input id="firstName" path="firstName" type="text"
									cssClass="form-control" />
									<form:errors path="firstName" cssClass="text-danger" />
							</div>
							</div>
						</div>
		
						<div class="form-group">
							<div class="row">
							<label class="control-label col-lg-2 col-lg-2" for="lastName">
								Last Name</label>
							<div class="col-lg-8">
								<form:input id="lastName" path="lastName" type="text"
									cssClass="form-control" />
							</div>
							</div>
						</div>
		
						<div class="form-group">
							<div class="row">
							<label class="control-label col-lg-2 col-lg-2" for="address">
								Address</label>
							<div class="col-lg-8">
								<form:input id="address" path="address" type="text"
									class="form-control" />
							</div>
							</div>
						</div>
		
						<div class="form-group">
							<div class="row">
							<label class="control-label col-lg-2 col-lg-2" for="email">Email</label>
							<div class="col-lg-8">
								<form:input id="email" path="email" type="text"
									class="form-control" />
							</div>
							</div>
						</div>
		
						<div class="form-group">
							<div class="row">
							<div class="col-lg-offset-2 col-lg-8">
								<input type="submit" id="btnAdd" class="btn btn-primary btn-block"
									value="Add" />
							</div>
							</div>
						</div>
				</form:form>
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

