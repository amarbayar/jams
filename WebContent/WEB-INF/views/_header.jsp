	<header class="header">
		<a href="/FinalProject/home" class="logo">
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
		        	<li>
		        		<a href="/FinalProject/languages/en">English</a>
		        	</li>
		        	<li>
		        		<a href="/FinalProject/languages/fr">French</a>
		        	</li>
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
		                    <span>${loggedUser.firstName} ${loggedUser.lastName}<i class="caret"></i></span>
		                </a>
		                <ul class="dropdown-menu">
		                    <!-- User image -->
		                    <li class="user-header bg-light-blue">
		                        <img src="/FinalProject/resource/img/sunny.jpg" class="img-circle" alt="User Image" />
		                        <p>
		                            ${loggedUser.firstName} ${loggedUser.lastName}
		                            <small>Member since Nov. 2012</small>
		                        </p>
		                    </li>
		                    <!-- Menu Footer-->
		                    <li class="user-footer">
		                        <div class="pull-left">
		                            <a href="#" class="btn btn-default btn-flat">Profile</a>
		                        </div>
		                        <form action="/FinalProject/users/logout" method="get">
			                        <div class="pull-right">
			                            <input type="submit" class="btn btn-default btn-flat" value="Signout" />
			                        </div>
		                        </form>
		                        
		                    </li>
		                </ul>
		            </li>
		        </ul>
		    </div>
		</nav>
	</header>