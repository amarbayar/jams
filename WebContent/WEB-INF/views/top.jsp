<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>New Company</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<!-- Ionicons -->
<link href="//code.ionicframework.com/ionicons/1.5.2/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Morris chart -->
<link href="/FinalProject/resource/css/morris/morris.css" rel="stylesheet" type="text/css" />
<!-- jvectormap -->
<link href="/FinalProject/resource/css/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
<!-- Date Picker -->
<link href="/FinalProject/resource/css/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />
<!-- Daterange picker -->
<link href="/FinalProject/resource/css/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css" />
<!-- bootstrap wysihtml5 - text editor -->
<link href="/FinalProject/resource/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/FinalProject/resource/css/AdminLTE.css" rel="stylesheet" type="text/css" />
</head>
<body class="skin-blue">
	<header class="header">
		<a href="home" class="logo">
	    	<!-- Add the class icon to your logo image or logo icon to add the margining -->
	        JAMS
	    </a>
		<nav class="navbar navbar-static-top" role="navigation">
		    <!-- Sidebar toggle button-->
		    <a href="#" class="navbar-btn sidebar-toggle" data-toggle="offcanvas" role="button">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		    </a>
		    <div class="navbar-right">
		        <ul class="nav navbar-nav">
		            <!-- Tasks: style can be found in dropdown.less -->
		            <li class="dropdown tasks-menu">
		                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    <i class="fa fa-tasks"></i>
		                    <span class="label label-danger">9</span>
		                </a>
		                <ul class="dropdown-menu">
		                    <li class="header">You have 9 tasks</li>
		                    <li>
		                        <!-- inner menu: contains the actual data -->
		                        <ul class="menu">
		                            <li><!-- Task item -->
		                                <a href="#">
		                                    <h3>
		                                        Design some buttons
		                                        <small class="pull-right">20%</small>
		                                    </h3>
		                                    <div class="progress xs">
		                                        <div class="progress-bar progress-bar-aqua" style="width: 20%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
		                                            <span class="sr-only">20% Complete</span>
		                                        </div>
		                                    </div>
		                                </a>
		                            </li><!-- end task item -->
		                            <li><!-- Task item -->
		                                <a href="#">
		                                    <h3>
		                                        Create a nice theme
		                                        <small class="pull-right">40%</small>
		                                    </h3>
		                                    <div class="progress xs">
		                                        <div class="progress-bar progress-bar-green" style="width: 40%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
		                                            <span class="sr-only">40% Complete</span>
		                                        </div>
		                                    </div>
		                                </a>
		                            </li><!-- end task item -->
		                            <li><!-- Task item -->
		                                <a href="#">
		                                    <h3>
		                                        Some task I need to do
		                                        <small class="pull-right">60%</small>
		                                    </h3>
		                                    <div class="progress xs">
		                                        <div class="progress-bar progress-bar-red" style="width: 60%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
		                                            <span class="sr-only">60% Complete</span>
		                                        </div>
		                                    </div>
		                                </a>
		                            </li><!-- end task item -->
		                            <li><!-- Task item -->
		                                <a href="#">
		                                    <h3>
		                                        Make beautiful transitions
		                                        <small class="pull-right">80%</small>
		                                    </h3>
		                                    <div class="progress xs">
		                                        <div class="progress-bar progress-bar-yellow" style="width: 80%" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100">
		                                            <span class="sr-only">80% Complete</span>
		                                        </div>
		                                    </div>
		                                </a>
		                            </li><!-- end task item -->
		                        </ul>
		                    </li>
		                    <li class="footer">
		                        <a href="#">View all tasks</a>
		                    </li>
		                </ul>
		            </li>
		            <!-- User Account: style can be found in dropdown.less -->
		            <li class="dropdown user user-menu">
		                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		                    <i class="glyphicon glyphicon-user"></i>
		                    <span>${user_fName} ${user_lName}<i class="caret"></i></span>
		                </a>
		                <ul class="dropdown-menu">
		                    <!-- User image -->
		                    <li class="user-header bg-light-blue">
		                        <img src="/FinalProject/resource/img/sunny.jpg" class="img-circle" alt="User Image" />
		                        <p>
		                            ${user_fName} ${user_lName}
		                            <small>Member since Nov. 2012</small>
		                        </p>
		                    </li>
		                    <!-- Menu Footer-->
		                    <li class="user-footer">
		                        <div class="pull-left">
		                            <a href="#" class="btn btn-default btn-flat">Profile</a>
		                        </div>
		                        <div class="pull-right">
		                            <a href="#" class="btn btn-default btn-flat">Sign out</a>
		                        </div>
		                    </li>
		                </ul>
		            </li>
		        </ul>
		    </div>
		</nav>
	</header>
		<div class="wrapper row-offcanvas row-offcanvas-left">
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="left-side sidebar-offcanvas">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="/FinalProject/resource/img/sunny.jpg" class="img-circle" alt="User Image" />
                        </div>
                        <div class="pull-left info">
                            <p>Hello, ${user_fName}</p>

                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search..."/>
                            <span class="input-group-btn">
                                <button type='submit' name='seach' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="active">
                            <a href="/FinalProject/home">
                                <i class="fa fa-dashboard"></i> <span>Dashboard</span>
                            </a>
                        </li>
                        <li class="treeview">
	                        <a href="#">
	                            <i class="fa fa-folder"></i> <span>Applications</span>
	                        </a>
	                        <ul class="treeview-menu">
	                        	<li><a href="/FinalProject/jobApplication"><i class="fa fa-angle-double-right"></i>View Applications</a></li>
                            	<li><a href="/FinalProject/jobApplication/add"><i class="fa fa-angle-double-right"></i>Add Application</a></li>
	                        </ul>
                        </li>
                        <li class="treeview">
                        	<a href="#">
                                <i class="fa fa-th"></i> <span>Companies</span> 
                            </a>
                            <ul class="treeview-menu">
                            	<li><a href="/FinalProject/company/list"><i class="fa fa-angle-double-right"></i>View Companies</a></li>
                            	<li><a href="/FinalProject/company/add"><i class="fa fa-angle-double-right"></i>Add Company</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-th"></i> <span>Resources</span> 
                            </a>
                            <ul class="treeview-menu">
                            	<li><a href="/FinalProject/recruiters"><i class="fa fa-angle-double-right"></i>View Recruiters</a></li>
                            	<li><a href="/FinalProject/recruiters/add"><i class="fa fa-angle-double-right"></i>Add Recruiter</a></li>
                            	<li><a href="#"><i class="fa fa-angle-double-right"></i>Referrers</a></li>
                            	<li><a href="#"><i class="fa fa-angle-double-right"></i>Study</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-calendar"></i> <span>Calendar</span>
                            </a>
                            <ul class="treeview-menu">
                            	<li><a href="/FinalProject/events"><i class="fa fa-angle-double-right"></i>View Events</a></li>
                            	<li><a href="/FinalProject/events/add"><i class="fa fa-angle-double-right"></i>New Events</a></li>
                            </ul>
                        </li>
                    </ul>
               	</section>
          	</aside>
          	<aside class="right-side">
            <!-- Content Header (Page header) -->
	         	<section class="content-header">
	            	<h1>
	                	Dashboard
	                </h1>
	                <ol class="breadcrumb">
		                <li><a href="home"><i class="fa fa-dashboard"></i> Home</a></li>
		                <li class="active">Dashboard</li>
	                </ol>
        		</section>
        		
        		<!-- Plug main content here -->
        		<section class="content">