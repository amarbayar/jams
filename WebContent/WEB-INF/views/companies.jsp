<%@ include file="top.jsp" %> 
<!-- Plug main content here -->
<section class="content">
    <section class="container">	
		<div class="row">
			<table id="example" class="table table-striped table-bordered" cellspacing="0" width="75%">
				<thead>
		            <tr>
		                <th>Name</th>
		                <th>Information</th>
		                <th>URL</th>
		                <th></th>
		            </tr>
        		</thead>
        		<tbody>
	        		<c:forEach items="${companies}" var = "company">
	            	<tr>
		                <td>${company.name}</td>
		                <td>${company.information}</td>
		                <td><a href="http://${company.url}">${company.url}</a></td>
		                <td><a href="delete?cid=${company.id}">Delete</a></td>
	            	</tr>
	            	</c:forEach>
        		</tbody>
			</table>
		</div>
	</section>
</section><!-- right col -->        		
</aside>   
</div>        
<%@ include file="bottom.jsp" %>