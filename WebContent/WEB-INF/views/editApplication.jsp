<%@ include file="_taglibs.jsp" %>
<html>
<head>
	<%@ include file="_link_href.jsp" %>
	<%@ include file="_scripts.jsp" %>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
 	<script type="text/javascript">
		 $(document).ready(function() {
		  $('#companyId').keyup(function() {
		   doAjaxPost();
		  });
		
		  $("#companyId").change(function() {
		   
		   doAjaxPost();
		  });
		
		 });
		
		 function doAjaxPost() {
		
		  $.ajax({
		   type : "post",
		   url : "http://localhost:8080/FinalProject/jobApplication/ajaxRequest",
		   data : 'companyId=' + $('#companyId').val(),
		   success : function(response) {
		    var select = '<select id="recruiterId" path="recruiterId">';
		    var option = '';
		    select = select + response + '</select>';
		
		    $('#recruiterId').html(select);
		
		   },
		   error : function(e) {
		    alert('Error: ' + e);
		   }
		  });
		 }
</script>
	<title>Edit Application</title>	
</head>
 
 <body class="skin-blue">
 	<%@ include file="_header.jsp" %>
 	<div class="wrapper row-offcanvas row-offcanvas-left">
 		<%@ include file="_navigation.jsp" %>
 		<aside class="right-side">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Edit Application
				</h1>
				<ol class="breadcrumb">
					<li><a href="/FinalProject/home"><i class="fa fa-dashboard"></i> Home</a></li>
					<li><a href="/FinalProject/jobApplication">Applications</a></li>
					<li class="active">Edit</li>
				</ol>
				
			</section>
			<!-- Plug main content here -->
			<!-- ====================== -->
			<section class="container">
			<br><br>
				<form:form modelAttribute="newJobApplication" action="/FinalProject/jobApplication/update/${newJobApplication.id}" 
				class="form-horizontal">
				
					<fieldset>
						<legend>Add new Application</legend>
				
						<div class="form-group">
							<label class="control-label col-lg-2 col-lg-2" for=companyId>
								<spring:message code="application.form.companyName" />
							</label>
							<div class="col-lg-8">
								<form:select id="companyId" path="companyId"
									class="form-control">
									<c:forEach items="${companies}" var="company">
										<c:choose>
											<c:when test="${company.id == newJobApplication.companyId}">
												<option value="${company.id}" selected="selected">${company.name}</option>
											</c:when>
											<c:otherwise>
												<option value="${company.id}">${company.name}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</form:select>
							</div>
						</div>
				
						<div class="form-group">
							<label class="control-label col-lg-2 col-lg-2" for="jobTitile">
								<spring:message code="application.form.jobTitle" />
							</label>
				
							<div class="col-lg-8">
								<form:input id="jobTitile" path="jobTitile" type="text"
									class="form-control" />
								<form:errors path="jobTitile" cssClass="text-danger" />
							</div>
						</div>
				
						<div class="form-group">
							<label class="control-label col-lg-2 col-lg-2" for="status">
								<spring:message code="application.form.status" />
							</label>
							<div class="col-lg-8">
								<form:select id="status" path="status" class="form-control">
				
									<c:choose>
										<c:when test="${'Active' == newJobApplication.status}">
											<option value="Active" selected="selected">Active</option>
											<option value="InActive">InActive</option>
										</c:when>
										<c:otherwise>
											<option value="Active">Active</option>
											<option value="InActive" selected="selected">InActive</option>
										</c:otherwise>
				
				
									</c:choose>
				
				
				
								</form:select>
							</div>
				
						</div>
				
						<div class="form-group">
							<label class="control-label col-lg-2 col-lg-2" for="phaseId">
								<spring:message code="application.form.phase" />
							</label>
				
				
							<div class="col-lg-8">
								<form:select id="phaseId" path="phaseId" class="form-control">
									<c:forEach items="${phases}" var="phase">
										<c:choose>
											<c:when test="${phase.phase_id == newJobApplication.phaseId}">
												<option value="${phase.phase_id}" selected="selected">${phase.phase_type}</option>
											</c:when>
											<c:otherwise>
												<option value="${phase.phase_id}">${phase.phase_type}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</form:select>
								
							</div>
				
						</div>
				
						<div class="form-group">
							<label class="control-label col-lg-2 col-lg-2" for="priority">
								<spring:message code="application.form.priority" />
							</label>
				
							<div class="col-lg-8">
				
								
								
								<form:select id="priority" path="priority" class="form-control">							
										<c:choose>
											<c:when test="${'High' == newJobApplication.priority}">
												<option value="High" selected=selected>High</option>
												<option value="Medium">Medium</option>
												<option value="Low">Low</option>
											</c:when>
											<c:when test="${'Medium' == newJobApplication.priority}">
												<option value="High">High</option>
												<option value="Medium" selected=selected>Medium</option>
												<option value="Low">Low</option>
											</c:when>
											<c:otherwise>
												<option value="High">High</option>
												<option value="Medium">Medium</option>
												<option value="Low" selected=selected>Low</option>
											</c:otherwise>
										</c:choose>
									
								</form:select>
								
								
								
								
							</div>
				
						</div>
				
						<div class="form-group">
							<label class="control-label col-lg-2 col-lg-2" for="recruiterId">
								<spring:message code="application.form.recruiter" />
							</label>
				
							<div class="col-lg-8">
								
								<form:select id="recruiterId" path="recruiterId" class="form-control">
									<c:forEach items="${recruiters}" var="recruiter">
										<c:choose>
											<c:when test="${recruiter.id == newJobApplication.phaseId}">
												<option value="${recruiter.id}" selected="selected">${recruiter.firstName}</option>
											</c:when>
											<c:otherwise>
												<option value="${recruiter.id}">${recruiter.firstName} ${recruiter.lastName}</option>
											</c:otherwise>
										</c:choose>
									</c:forEach>
								</form:select>
								
								
								
							</div>
				
				
				
							<!--div class="col-lg-8">
								<form:input id="recruiterId" path="recruiterId" type="text" class="form-control" />
								<form:errors path="recruiterId" cssClass="text-danger" />
							</div-->
						</div>
				
						<!--div class="form-group">
							<label class="control-label col-lg-2 col-lg-2" for="historyId">
								<spring:message code="application.form.history" />
							</label>
				
							<div class="col-lg-8">
								<form:input id="historyId" path="historyId" type="text"
									class="form-control" />
								<form:errors path="historyId" cssClass="text-danger" />
							</div>
						</div-->
				
						<div class="form-group">
							<label class="control-label col-lg-2 col-lg-2"
								for="applicationDate"> <spring:message
									code="application.form.date" />
							</label>
				
							<div class="col-lg-8">
								<form:input id="applicationDate" path="applicationDate"
									type="text" class="form-control"  readonly="true"/>
								<form:errors path="applicationDate" cssClass="text-danger" />
							</div>
						</div>
				
						<div class="form-group">
							<label class="control-label col-lg-2 col-lg-2" for="refer">
								<spring:message code="application.form.notes" />
							</label>
				
							<div class="col-lg-8">
								<form:input id="refer" path="refer" type="text"
									class="form-control" />
								<form:errors path="refer" cssClass="text-danger" />
							</div>
						</div>
						<div class="form-group">
							<div class="col-lg-offset-2 col-lg-8">
								<input type="submit" id="btnAdd" class="btn btn-primary"
									value="Edit" />
							</div>
						</div>

					</fieldset>
				</form:form>			    
			</section><!-- right col -->
			<!-- ====================== -->
			<!-- ====================== -->
			
		</aside>
	</div>    
	<%@ include file="_footer.jsp" %>
</body>
</html>

