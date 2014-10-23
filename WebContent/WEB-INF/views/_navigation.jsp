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
                            <p>Hello, ${loggedUser.firstName}</p>

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
	                        	<li><a href="/FinalProject/jobApplication"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-list-alt" ></span>View Applications</a></li>
                            	<li><a href="/FinalProject/jobApplication/add"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-plus" ></span>Add Application</a></li>
	                        </ul>
                        </li>
                        <li class="treeview">
                        	<a href="#">
                                <i class="fa fa-th"></i> <span>Companies</span> 
                            </a>
                            <ul class="treeview-menu">
                            	<li><a href="/FinalProject/company/list"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-th-large" ></span>View Companies</a></li>
                            	<li><a href="/FinalProject/company/add"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-plus" ></span>Add Company</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-th"></i> <span>Resources</span> 
                            </a>
                            <ul class="treeview-menu">
                            	<li><a href="/FinalProject/recruiters"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-user" ></span>View Recruiters</a></li>
                            	<li><a href="/FinalProject/recruiters/add"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-plus" ></span>Add Recruiter</a></li>
                            	<li><a href="#"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-tasks" ></span>Referrers</a></li>
                            	<li><a href="#"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-tasks" ></span>Study</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-calendar"></i> <span>Calendar</span>
                            </a>
                            <ul class="treeview-menu">
                            	<li><a href="/FinalProject/events"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-calendar" ></span>View Events</a></li>
                            	<li><a href="/FinalProject/events/add"><i class="fa fa-angle-double-right"></i><span class="glyphicon glyphicon-plus" ></span>Add Event</a></li>
                            </ul>
                        </li>
                    </ul>
               	</section>
          	</aside>