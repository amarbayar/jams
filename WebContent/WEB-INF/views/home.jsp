<%@ include file="top.jsp" %> 
<section class="content">
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
	    </div><!-- /.box-body -->
	</div><!-- /.box -->								
                               
</section><!-- right col -->        		      
<%@ include file="bottom.jsp" %>