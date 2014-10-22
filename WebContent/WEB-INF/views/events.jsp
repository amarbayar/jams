 <%@ include file="top.jsp" %>   
<!-- Plug main content here -->
<section class="container">
    <div class="container">
		<div class="table-responsive">
	    	<table class="table table-bordered table-hover table-striped">
		        <thead>
			        <tr>
				        <th>Title</th>
				        <th>Date</th>
				        <th>Time</th>
				        <th>Description</th>
				        <th>AppID</th>
				        <th>Status</th>
			        </tr>
		        </thead>
		        <tbody>
					<c:forEach items="${events}" var = "evt">
				        <tr>
							<td>${evt.event_title}</td>
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
	<form action="events/add">
		<div class="form-group">
			<div class="pull-right">
				<input type="submit" id="btnAdd" class="btn btn-success" value="New Schedule" />
			</div>
		</div>
	</form>
</section><!-- right col -->        		
<%@ include file="bottom.jsp" %>  