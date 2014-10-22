 <%@ include file="top.jsp" %>       		
<!-- Plug main content here -->
<section class="container">
	<form:form modelAttribute="newEvent" action="/FinalProject/events/new" method="post" class="form-horizontal">
		<fieldset>
				<legend>New Schedule:</legend>
				<div class="form-group">
					<div class="row">
					<label class="control-label col-lg-2" for="event_title">
					<spring:message code="addEvent.form.event_title.label"/>
					</label>
				
					<div class="col-lg-8">
						<form:input id="event_title" path="event_title" type="text" cssClass="form-control" />
						<form:errors path="event_title" cssClass="text-danger" />
					</div>
					</div>
				</div>
	
				<div class="form-group">
					<div class="row">
					<label class="control-label col-lg-2" for="event_desc">
						<spring:message code="addEvent.form.event_desc.label"/>
					</label>
					<div class="col-lg-8">
						<form:input id="event_desc" path="event_desc" type="text" cssClass="form-control" />
					</div>
					</div>
				</div>
	
				<div class="form-group">
					<div class="row">
					<label class="control-label col-lg-2" for="event_date">
						<spring:message code="addEvent.form.event_date.label"/>
					</label>
					<div class="col-lg-8">
						<form:input id="event_date" path="event_date" type="date" cssClass="form-control" />
					</div>
					</div>
				</div>
				
				<div class="form-group">
					<div class="row">
					<label class="control-label col-lg-2" for="event_time">
						<spring:message code="addEvent.form.event_time.label"/>
					</label>
					<div class="col-lg-8">
						<form:input id="event_time" path="event_time" type="time" cssClass="form-control" />
					</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
					<label class="control-label col-lg-2" for="event_appid">
						<spring:message code="addEvent.form.event_appid.label"/>
					</label>
					<div class="col-lg-8">
						<form:select id="event_appid" path="event_appid" class="form-control">
							<option value="1">Application #1</option>
							<option value="2">Application #2</option>
							<option value="3">Application #3</option>
							<option value="4">Application #4</option>
							<option value="5">Application #5</option>
						</form:select>
					</div>
					</div>
				</div>
	
				<div class="form-group">
					<div class="row">
					<div class="col-lg-offset-2 col-lg-8">
						<input type="submit" id="btnAdd" class="btn btn-primary btn-block"
							value="Schedule" />
					</div>
					</div>
				</div>
				
			</fieldset>
	</form:form>        		    
</section><!-- right col -->        		
<%@ include file="bottom.jsp" %>        	