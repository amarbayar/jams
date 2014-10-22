<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
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

				
				/*$.each(response, function(index, value) {

					option += '<option value='+value+'>' + value + '</option>';
				});*/
				//alert(response);
				select = select + response + '</select>';

				$('#recruiterId').html(select);

			},
			error : function(e) {
				alert('Error: ' + e);
			}
		});
	}
</script>

<title>Companies</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Applications</h1>
				<p>List of all application</p>
			</div>
		</div>
	</section>
	<section class="container">
		<form:form modelAttribute="newJobApplication" class="form-horizontal">

			<fieldset>
				<legend>Add new Application</legend>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for=companyId>
					<spring:message code="application.form.companyName"/>
					</label>
				<div class="col-lg-10">
				
				
		
				
					<form:select id="companyId" path="companyId" class="form:input-large">  
                		<option value="">Select Company</option>
                		<c:forEach items="${companies}" var = "company">
                		<option value="${company.id}">${company.name}</option>
                		</c:forEach>
            		</form:select>  
            	</div>
				

				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="jobTitile">
					<spring:message code="application.form.jobTitle"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="jobTitile" path="jobTitile" type="text" class="form:input-large" />
						<form:errors path="jobTitile" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="status">
					<spring:message code="application.form.status"/>
					</label>
				<div class="col-lg-10">
					<form:select id="status" path="status" class="form:input-large">  
                		<option value="Active">Active</option>
                		<option value="InActive">InActive</option>
            		</form:select>  	
            	</div>			
				
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="phaseId">
					<spring:message code="application.form.phase"/>
					</label>


					<div class="col-lg-10">
						<form:select id="phaseId" path="phaseId" class="form:input-large">
							<option value="">Select Application Phase</option>
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

					<!--div class="col-lg-10">
						<form:input id="phaseId" path="phaseId" type="text" class="form:input-large" />
						<form:errors path="phaseId" cssClass="text-danger" />
					</div-->
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="priority">
					<spring:message code="application.form.priority"/>
					</label>
				
					<div class="col-lg-10">
						<form:select id="priority" path="priority" class="form:input-large">
							<option value="">Select Priority</option>
							<option value="High">High</option>
							<option value="Medium">Medium</option>
							<option value="Low">Low</option>
						</form:select>
					</div>



					<!-- div class="col-lg-10">
						<form:input id="priority" path="priority" type="text" class="form:input-large" />
						<form:errors path="priority" cssClass="text-danger" />
					</div-->
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="recruiterId">
					<spring:message code="application.form.recruiter"/>
					</label>
				
					<div class="col-lg-10">
						<form:select id="recruiterId" path="recruiterId" class="form:input-large">
							<option value="">Select Recruiter</option>
						</form:select>
					</div>
				
				
				
					<!--div class="col-lg-10">
						<form:input id="recruiterId" path="recruiterId" type="text" class="form:input-large" />
						<form:errors path="recruiterId" cssClass="text-danger" />
					</div-->
				</div>
				
				
				<!--input type=hidden name="applicationDate" value="${currentDateTime}"/-->
				
				<!--div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="historyId">
					<spring:message code="application.form.history"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="historyId" path="historyId" type="text" class="form:input-large" />
						<form:errors path="historyId" cssClass="text-danger" />
					</div>
				</div-->
				
				<!--div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="applicationDate">
					<spring:message code="application.form.date"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="applicationDate" path="applicationDate" type="text" class="form:input-large" />
						<form:errors path="applicationDate" cssClass="text-danger" />
					</div>
				</div-->
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="refer">
					<spring:message code="application.form.notes"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="refer" path="refer" type="text" class="form:input-large" />
						<form:errors path="refer" cssClass="text-danger" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary" value ="Add"/>
					</div>
				</div>
				
				
				
			</fieldset>
		</form:form>
	</section>
</body>
</html>

<!-- 
application.form.companyName = fr Company Name
application.form.jobTitle = fr Job Title
application.form.status = fr Status
application.form.phase = fr Phase
application.form.priority = fr Priority
application.form.recruiter = fr Recruiter
application.form.history = fr History
application.form.date = fr Date
application.form.notes = fr  Notes
application.form.refer = fr Refer
 -->