<%@ include file="top.jsp" %> 
	<section class="container">
		<form:form modelAttribute="newRecruiter" class="form-horizontal">

			<fieldset>
				<legend>Add new recruiters</legend>

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
			</fieldset>
		</form:form>
	</section>
<%@ include file="bottom.jsp" %>