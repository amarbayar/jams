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
			    <h4 class="page-header">
					Applications
					<small>Statistics and 6 Most Recent Applications</small>
				</h4>    		
				<div class="row">
					<div class="col-md-6">
			            <!-- LINE CHART -->
			            <div class="box box-info">
			                <div class="box-header">
			                    <h3 class="box-title">Weekly Application Submits:</h3>
			                </div>
			                <div class="box-body chart-responsive">
			                    <div class="chart" id="line-chart" style="height: 320px;"></div>
			                </div><!-- /.box-body -->
			            </div><!-- /.box -->
			        </div><!-- /.col (RIGHT) -->
			        <div class="col-lg-3 col-xs-6">
			            <!-- small box -->
			            <div class="small-box bg-olive">
			                <div class="inner">
			                    <h4>
			                        Software Developer <span class="badge alert-info">Microsoft</span>
			                    </h4>
			                    <p>
			                        Phase: Resume & Cover Letter
			                    </p>
			                </div>
			                <div class="icon">
			                    <i class="ion ion-person-add"></i>
			                </div>
			                <a href="#" class="small-box-footer">
			                    Details <i class="fa fa-arrow-circle-right"></i>
			                </a>
			            </div>
			        </div><!-- ./col -->
			        <div class="col-lg-3 col-xs-6">
			            <!-- small box -->
			            <div class="small-box bg-red">
			                <div class="inner">
			                    <h4>
			                       Software Engineer <span class="badge alert-info">Amazon</span>
			                    </h4>
			                    <p>
			                        Phase: Technical Interview
			                    </p>
			                </div>
			                <div class="icon">
			                    <i class="ion ion-person-add"></i>
			                </div>
			                <a href="#" class="small-box-footer">
			                    Details <i class="fa fa-arrow-circle-right"></i>
			                </a>
			            </div>
			        </div><!-- ./col -->
			         <div class="col-lg-3 col-xs-6">
			            <!-- small box -->
			            <div class="small-box bg-blue">
			                <div class="inner">
			                    <h4>
			                       Java Developer <span class="badge alert-info">Micros</span>
			                    </h4>
			                    <p>
			                        Phase: On-Site
			                    </p>
			                </div>
			                <div class="icon">
			                    <i class="ion ion-person-add"></i>
			                </div>
			                <a href="#" class="small-box-footer">
			                    Details <i class="fa fa-arrow-circle-right"></i>
			                </a>
			            </div>
			        </div><!-- ./col -->
			        <div class="col-lg-3 col-xs-6">
			            <!-- small box -->
			            <div class="small-box bg-orange">
			                <div class="inner">
			                    <h4>
			                       JEE2 <span class="badge alert-info">CyberSpace</span>
			                    </h4>
			                    <p>
			                        Phase: Skype
			                    </p>
			                </div>
			                <div class="icon">
			                    <i class="ion ion-person-add"></i>
			                </div>
			                <a href="#" class="small-box-footer">
			                    Details <i class="fa fa-arrow-circle-right"></i>
			                </a>
			            </div>
			        </div>
			        <div class="col-lg-3 col-xs-6">
			            <!-- small box -->
			            <div class="small-box bg-olive">
			                <div class="inner">
			                    <h4>
			                        Software Developer <span class="badge alert-info">Microsoft</span>
			                    </h4>
			                    <p>
			                        Phase: Resume & Cover Letter
			                    </p>
			                </div>
			                <div class="icon">
			                    <i class="ion ion-person-add"></i>
			                </div>
			                <a href="#" class="small-box-footer">
			                    Details <i class="fa fa-arrow-circle-right"></i>
			                </a>
			            </div>
			        </div><!-- ./col -->
			        <div class="col-lg-3 col-xs-6">
			            <!-- small box -->
			            <div class="small-box bg-red">
			                <div class="inner">
			                    <h4>
			                       Software Engineer <span class="badge alert-info">Amazon</span>
			                    </h4>
			                    <p>
			                        Phase: Technical Interview
			                    </p>
			                </div>
			                <div class="icon">
			                    <i class="ion ion-person-add"></i>
			                </div>
			                <a href="#" class="small-box-footer">
			                    Details <i class="fa fa-arrow-circle-right"></i>
			                </a>
			            </div>
			        </div><!-- ./col -->
				</div>	
				<h4 class="page-header">
					Topics to study and calendar at a glance
				</h4>
				<div class="row">
					<div class="col-md-4">
                            <!-- Primary box -->
                            <div class="box box-solid box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Algorithm</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-primary btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-primary btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="box-body">
                                    <p>
                                        Need to study Algorithm and Data Structures.<br>
                                        Resource: www.edx.org <br>
                                        Class: CS50 by David Malan at Harvard
                                    </p>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                	</div><!-- /.col -->
                	                	<div class="col-md-4">
                            <!-- Primary box -->
                            <div class="box box-solid box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Logical Questions</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-primary btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-primary btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="box-body">
                                    <p>
                                        Need to study Algorithm and Data Structures.<br>
                                        Resource: www.jooj.info <br>
                                        Class: CS50 by David Malan at Harvard
                                    </p>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                	</div><!-- /.col -->
                	<div class="col-md-4">
                            <!-- Primary box -->
                            <div class="box box-solid box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Interview Questions</h3>
                                    <div class="box-tools pull-right">
                                        <button class="btn btn-primary btn-sm" data-widget="collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-primary btn-sm" data-widget="remove"><i class="fa fa-times"></i></button>
                                    </div>
                                </div>
                                <div class="box-body">
                                    <p>
                                        Need to study Algorithm and Data Structures.<br>
                                        Resource: www.jooj.info <br>
                                        Class: CS50 by David Malan at Harvard
                                    </p>
                                </div><!-- /.box-body -->
                            </div><!-- /.box -->
                	</div><!-- /.col -->
                	<div class="col-md-8">
	                	<div class="box">
						    <div class="box-header">
						        <h3 class="box-title">Next 10 To-Do List</h3>
						    </div><!-- /.box-header -->
						    <div class="box-body no-padding">
						        <table class="table table-striped">
						        	<thead>
							             <tr>
									        <th>Title</th>
									        <th>Date</th>
									        <th>Time</th>
									        <th>AppID</th>
									        <th>Status</th>
								        </tr>
							        </thead>
							        <tbody>
										<c:forEach items="${events}" var = "evt">
									        <tr>
												<td>${evt.event_title}</td>
												<td>${evt.event_date}</td>
												<td>${evt.event_time}</td>
												<td>${evt.event_time}</td>
											    <td>${evt.event_appid}</td>
											    <td><span class="label label-warning">Status</span></td>
											    <td><button id="Edit" class="btn btn-info btn-sm">E</button></td>
											    <td><button id="Delete" class="btn btn-danger btn-sm">X</button></td>
											</tr>
										</c:forEach>
							        </tbody>
						        </table>
						    </div><!-- /.box-body -->
						</div><!-- /.box -->	
					</div>		
				</div>
			</section><!-- right col -->
			<!-- ====================== -->
			<!-- ====================== -->
			
		</aside>
	</div>
</body>     
<br><br>   
<%@ include file="_scripts.jsp" %>
<%@ include file="_footer.jsp" %>
</body>
</html>
