<%@ include file="top.jsp" %> 
	<section class="container">
		<form:form modelAttribute="newApplication" action="/FinalProject/jobApplication/add" method="post" class="form-horizontal">

			<fieldset>
				<legend>Add new Application</legend>

				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.companyName"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.jobTitle"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.status"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.phase"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.priority"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.recruiter"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.history"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.date"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.notes"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name">
					<spring:message code="application.form.refer"/>
					</label>
				
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text" class="form:input-large" />
						<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				
				
			</fieldset>
		</form:form>
	</section>
<%@ include file="bottom.jsp" %>