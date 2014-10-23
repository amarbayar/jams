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
					New Company
				</h1>
				<ol class="breadcrumb">
					<li><a href="/FinalProject/home"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Add Company</li>
				</ol>
			</section>
			<!-- Plug main content here -->
			    <section class="container">
			    	<br><br>
					<form:form modelAttribute="newCompany" class="form-horizontal" id="form_fill">
							<div class="form-group">
								<div class="row">
								<label class="control-label col-lg-2" for="name">
								<spring:message code="addCompany.form.name.label"/>
								</label>
							
								<div class="col-lg-8">
									<form:input id="name" path="name" type="text" class="form-control" />
									<form:errors path="name" cssClass="text-danger" />
								</div>
								</div>
							</div>
			
							<div class="form-group">
								<div class="row">
								<label class="control-label col-lg-2" for="information">
									<spring:message code="addCompany.form.information.label"/>
								</label>
								<div class="col-lg-8">
									<form:input id="information" path="information" type="text" class="form-control" />
								</div>
								</div>
							</div>
			
							<div class="form-group">
								<div class="row">
								<label class="control-label col-lg-2" for="age">
									<spring:message code="addCompany.form.url.label"/>
								</label>
								<div class="col-lg-8">
									<form:input id="url" path="url" type="text" class="form-control" />
								</div>
								</div>
							</div>
							
							<div class="form-group">
								<div class="row">
								<div class="col-lg-offset-2 col-lg-8">
									<input type="submit" id="btnAdd" class="btn btn-primary btn-block"
										value="Add Company" />
								</div>
								</div>
							</div>
					</form:form>
				</section>					
		</aside>
	</div>
</body>        
<%@ include file="_scripts.jsp" %>
<%@ include file="_footer.jsp" %>
</body>
</html>
