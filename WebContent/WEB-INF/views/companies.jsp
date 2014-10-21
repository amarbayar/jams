<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;
charset=ISO-8859-1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">
<title>Companies</title>
</head>
<body>
	<section>
		<div class="jumbotron">
			<div class="container">
				<h1>Customers</h1>
				<p>List of all Company</p>
			</div>
		</div>
	</section>
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
</body>
</html>