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
					Dashboard
				</h1>
				<ol class="breadcrumb">
					<li><a href="/FinalProject/home"><i class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Dashboard</li>
				</ol>
				
			</section>
			<!-- Plug main content here -->
			<!-- ====================== -->
			<section class="container">
			    <fieldset>
				<legend>About</legend>
				<h3>Open source Project</h3>
				<p>
				It an open source project for MUM students to manage schedule while there are ready for applying Job.
				We use here, Spring MVC and Hibernate to develop this site.
				<br /> 
				Please, check <a href="https://github.com/amarbayar/jams/">Git Hub</a> to Download latest code.
				<br />
				<br />
				If you are facing problem you are welcome to contact us. Please visit <a href="contact">Contact Us</a> page to contact developers.
				</p>
			</fieldset>
			</section><!-- right col -->
			<!-- ====================== -->
			<!-- ====================== -->
			
		</aside>
	</div>
</body>        
<%@ include file="_scripts.jsp" %>
</body>
</html>
