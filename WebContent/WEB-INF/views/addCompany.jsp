<%@ include file="top.jsp" %> 
<!-- Plug main content here -->
<section class="content">
    <section class="container">
		<form:form modelAttribute="newCompany" class="form-horizontal">

			<fieldset>
				<legend>Add new company</legend>
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
				
			</fieldset>
		</form:form>
	</section>					
</section><!-- right col -->        
<%@ include file="bottom.jsp" %>