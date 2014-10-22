<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- bootstrap 3.0.2 -->
<link href="/FinalProject/resource/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="/FinalProject/resource/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/FinalProject/resource/css/AdminLTE.css" rel="stylesheet" type="text/css" />
<title>New Customer</title>
</head>
<body class="bg-black">
        <div class="form-box" id="login-box">
            <div class="header">Register</div>
            <form:form modelAttribute="newUser" action="/FinalProject/users/add" class="form-horizontal">
            	<div class="body bg-gray">
            		<div class="form-group">
						<spring:message code="addUser.form.userFirstName.label" />
						<form:input id="firstName" path="firstName" type="text" class="form-control" placeholder="John" />
						<form:errors path="firstName" cssClass="text-danger" />
					</div>
					<div class="form-group">
						<spring:message code="addUser.form.userLastName.label" />
						<form:input id="lastName" path="lastName" type="text" class="form-control" placeholder="Doe" />
						<form:errors path="lastName" cssClass="text-danger" />
					</div>
		
					<div class="form-group">
						<spring:message code="addUser.form.userEmail.label" />
						<form:input id="email" path="email" type="text" class="form-control" placeholder="youremail@domain.com" />
						<form:errors path="email" cssClass="text-danger" />
						${messageNotification}
					</div>
		
					<div class="form-group">
						<spring:message code="addUser.form.userPassword.label" />
						<form:input id="password" path="password" type="password" class="form-control"  />
						<form:errors path="password" cssClass="text-danger" />
					</div>                                                               
			        <button type="submit" class="btn bg-olive btn-block">Register</button>
			        
			        <div class="form-group">
			        	Already have an account? <a href="/FinalProject/users/login">Login here</a>
			        </div>  
				</div>
			</form:form>			
			
            <div class="margin text-center">
                <span>Sign in using social networks</span>
                <br/>
                <button class="btn bg-light-blue btn-circle"><i class="fa fa-facebook"></i></button>
                <button class="btn bg-aqua btn-circle"><i class="fa fa-twitter"></i></button>
                <button class="btn bg-red btn-circle"><i class="fa fa-google-plus"></i></button>
            </div>
        </div>

        <!-- jQuery 2.0.2 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
        <!-- Bootstrap -->
        <script src="resource/js/bootstrap.min.js" type="text/javascript"></script>        

</body>
</html>