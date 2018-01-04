<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

	<head>
		<title>Minoral 1.3 - Dashboard</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta charset="UTF-8" />

		<link rel="icon" type="image/ico" href="images/favicon.ico" />
		<!-- Bootstrap -->
		<link href="css/bootstrap.min.css" rel="stylesheet">
		<link href="font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
		<link rel="stylesheet" href="css/animate.min.css">
		<link rel="stylesheet" href="css/rickshaw.min.css">
		<link rel="stylesheet" href="css/bootstrap-checkbox.css">
		<link rel="stylesheet" href="css/summernote.css">
		<link rel="stylesheet" href="css/summernote-bs3.css">
		<link rel="stylesheet" href="css/chosen.min.css">
		<link rel="stylesheet" href="css/chosen-bootstrap.css">
		<link rel="stylesheet" href="js/plugins/tabdrop/css/tabdrop.css">
		<link rel="stylesheet" href="css/morris.css">
		<link href="css/minoral.css" rel="stylesheet">

		<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
	</head>

	<body class="brownish-scheme">

		<!-- Preloader -->
		<div class="mask">
			<div id="loader"></div>
		</div>
		<!--/Preloader -->

		<!-- Wrap all page content here -->
		<div id="wrap">

			<!-- Make page fluid -->
			<div class="row">

				<!-- Fixed navbar -->
				<div class="navbar navbar-default navbar-fixed-top" role="navigation">

					<!-- Branding -->
					<div class="navbar-header col-md-2">
						<a class="navbar-brand" href="index.html">
							<strong>MIN</strong> <span class="divider vertical"></span> ORAL
						</a>
						<div class="sidebar-collapse">
							<a href="#">
								<i class="fa fa-bars"></i>
							</a>
						</div>
					</div>
					<!-- Branding end -->

					<!-- .nav-collapse -->
					<div class="navbar-collapse">

						<!-- Content collapsing at 768px to sidebar -->
						<div class="collapsing-content">

							<!-- Quick Actions -->
							<ul class="nav navbar-nav">
								<li class="divided">
									<a href="#" class="page-refresh"><i class="fa fa-refresh"></i></a>
									<span class="divider vertical"></span>
								</li>

								<li class="dropdown quick-action tasks">
									<a class="dropdown-toggle button" data-toggle="dropdown" href="#">
										<i class="fa fa-tasks"></i>
										<span class="overlay-label green">5</span>
									</a>
									<ul class="dropdown-menu wide arrow green nopadding">
										<li>
											<h1>You have <strong>5</strong> new tasks</h1></li>
										<li>
											<a href="#">
												<div class="task-info">
													<div class="desc">Layout</div>
													<div class="percent">80%</div>
												</div>
												<div class="progress progress-striped progress-thin">
													<div class="progress-bar progress-bar-green" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
														<span class="sr-only">40% Complete (success)</span>
													</div>
												</div>
											</a>
										</li>
										<li>
											<a href="#">
												<div class="task-info">
													<div class="desc">Schemes</div>
													<div class="percent">15%</div>
												</div>
												<div class="progress progress-striped active progress-thin">
													<div class="progress-bar progress-bar-cyan" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 15%">
														<span class="sr-only">45% Complete</span>
													</div>
												</div>
											</a>
										</li>
										<li>
											<a href="#">
												<div class="task-info">
													<div class="desc">Forms</div>
													<div class="percent">5%</div>
												</div>
												<div class="progress progress-striped progress-thin">
													<div class="progress-bar progress-bar-orange" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 5%">
														<span class="sr-only">5% Complete (warning)</span>
													</div>
												</div>
											</a>
										</li>
										<li>
											<a href="#">
												<div class="task-info">
													<div class="desc">JavaScript</div>
													<div class="percent">30%</div>
												</div>
												<div class="progress progress-striped progress-thin">
													<div class="progress-bar progress-bar-red" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 30%">
														<span class="sr-only">30% Complete (danger)</span>
													</div>
												</div>
											</a>
										</li>
										<li>
											<a href="#">
												<div class="task-info">
													<div class="desc">Dropdowns</div>
													<div class="percent">60%</div>
												</div>
												<div class="progress progress-striped progress-thin">
													<div class="progress-bar progress-bar-amethyst" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
														<span class="sr-only">60% Complete</span>
													</div>
												</div>
											</a>
										</li>
										<li>
											<a href="#">Check all tasks <i class="fa fa-angle-right"></i></a>
										</li>
									</ul>
								</li>

								<li class="dropdown quick-action notifications">
									<a class="dropdown-toggle button" data-toggle="dropdown" href="#">
										<i class="fa fa-bell"></i>
										<span class="overlay-label orange">12</span>
									</a>
									<ul class="dropdown-menu wide arrow orange nopadding">
										<li>
											<h1>You have <strong>12</strong> new notifications</h1></li>

										<li>
											<a href="#">
												<span class="label label-green"><i class="fa fa-user"></i></span> New user registered.
												<span class="small">18 mins</span>
											</a>
										</li>

										<li>
											<a href="#">
												<span class="label label-red"><i class="fa fa-power-off"></i></span> Server down.
												<span class="small">27 mins</span>
											</a>
										</li>

										<li>
											<a href="#">
												<span class="label label-orange"><i class="fa fa-plus"></i></span> New order.
												<span class="small">36 mins</span>
											</a>
										</li>

										<li>
											<a href="#">
												<span class="label label-cyan"><i class="fa fa-power-off"></i></span> Server restared.
												<span class="small">45 mins</span>
											</a>
										</li>

										<li>
											<a href="#">
												<span class="label label-amethyst"><i class="fa fa-power-off"></i></span> Server started.
												<span class="small">50 mins</span>
											</a>
										</li>

										<li>
											<a href="#">Check all notifications <i class="fa fa-angle-right"></i></a>
										</li>
									</ul>
								</li>

							</ul>
							<!-- User Controls -->
							<div class="user-controls">
								<ul>

									<li class="dropdown messages">
										<a class="dropdown-toggle" data-toggle="dropdown" href="#">
											<span class="badge badge-red" id="user-new-messages"></span> John <strong>Douey</strong> <i class="fa fa-angle-down"></i>
										</a>
										<div class="profile-photo">
											<img src="images/profile-photo.jpg" alt />
										</div>
									</li>

									<li class="dropdown settings">
										<a class="dropdown-toggle options" data-toggle="dropdown" href="#">
											<i class="fa fa-cog"></i>
										</a>

										<ul class="dropdown-menu arrow">

											<li>
												<h3>Color schemes:</h3>
												<ul id="color-schemes">
													<li>
														<a href="#" class="brownish-scheme" title="Brownish"></a>
													</li>
													<li>
														<a href="#" class="darkgrey-scheme" title="Dark Grey"></a>
													</li>
													<li>
														<a href="#" class="lightgrey-scheme" title="Light Grey"></a>
													</li>
													<li>
														<a href="#" class="cyan-scheme" title="Cyan"></a>
													</li>
													<li>
														<a href="#" class="red-scheme" title="Red"></a>
													</li>
													<li>
														<a href="#" class="orange-scheme" title="Orange"></a>
													</li>
													<li>
														<a href="#" class="green-scheme" title="Green"></a>
													</li>
													<li>
														<a href="#" class="amethyst-scheme" title="Amethyst"></a>
													</li>
												</ul>
											</li>

											<li class="divider"></li>

											<li>
												<a href="#"><i class="fa fa-user"></i> Profile</a>
											</li>

											<li class="divider"></li>

											<li>
												<a href="#"><i class="fa fa-power-off"></i> Logout</a>
											</li>
										</ul>
									</li>

								</ul>
							</div>
							<!-- User Controls end -->

						</div>
						<!-- /Content collapsing at 768px to sidebar -->

						<!-- Sidebar -->
						<ul class="nav navbar-nav side-nav" id="navigation">
							<li class="collapsed-content">
								<!-- Collapsed content pasting here at 768px -->
							</li>
							<li class="user-status status-online" id="user-status">
								<div class="profile-photo">
									<img src="images/profile-photo.jpg" alt />
								</div>
								<div class="user">
									John <strong>Douey</strong>
									<span class="role">Administrator</span>
									<div class="status">
										<ul>
											<li class="dropdown change-status">
												<a class="dropdown-toggle my-status" data-toggle="dropdown" href="#">Online</a>

												<ul class="dropdown-menu arrow">
													<li>
														<a href="#" id="status-online" data-status="status-online">Online</a>
													</li>

													<li>
														<a href="#" id="status-away" data-status="status-away">Away</a>
													</li>

													<li>
														<a href="#" id="status-invisible" data-status="status-invisible">Invisible</a>
													</li>
												</ul>
											</li>
										</ul>

									</div>
								</div>
							</li>

							<li>
								<a href="#" title="公司信息管理">
									<i class="fa fa-desktop"><span class="overlay-label orange"></span></i>公司信息管理
								</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="人员管理">
									<i class="fa fa-user"><span class="overlay-label drank"></span></i> 人员管理 <b class="fa fa-angle-left dropdown-arrow"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#" title="角色分配">
											<i class="fa fa-align-right"><span class="overlay-label drank80"></span></i> 角色分配
										</a>
									</li>
									<li>
										<a href="#" title="员工列表">
											<i class="fa fa-th"><span class="overlay-label drank60"></span></i>员工列表
										</a>
									</li>
									<li>
										<a href="#" title="人员修改">
											<i class="fa fa-pencil"><span class="overlay-label drank40"></span></i>人员修改
										</a>
									</li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="角色管理">
									<i class="fa fa-list"><span class="overlay-label green"></span></i> 角色管理 <b class="fa fa-angle-left dropdown-arrow"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#" title="创建新角色">
											<i class="fa fa-thumb-tack"><span class="overlay-label green80"></span></i> 创建新角色
										</a>
									</li>
									<li>
										<a href="#" title="角色列表">
											<i class="fa fa-check-square"><span class="overlay-label green60"></span></i> 角色列表
										</a>
									</li>
									<li>
										<a href="#" title="角色修改">
											<i class="fa fa-shield"><span class="overlay-label green40"></span></i> 角色修改
										</a>
									</li>
									<li>
										<a href="#" title="角色功能">
											<i class="fa fa-th"><span class="overlay-label green20"></span></i> 角色功能
										</a>
									</li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" title="功能管理">
									<i class="fa fa-pencil"><span class="overlay-label amethyst"></span></i> 功能管理 <b class="fa fa-angle-left dropdown-arrow"></b>
								</a>
								<ul class="dropdown-menu">
									<li>
										<a href="#" title="新增功能">
											<i class="fa fa-puzzle-piece"><span class="overlay-label amethyst80"></span></i> 新增功能
										</a>
									</li>
									<li>
										<a href="#" title="功能列表">
											<i class="fa fa-font"><span class="overlay-label amethyst60"></span></i> 功能列表
										</a>
									</li>
									<li>
										<a href="#" title="修改功能">
											<i class="fa fa-arrows"><span class="overlay-label amethyst40"></span></i> 修改功能
										</a>
									</li>
								</ul>
							</li>
						</ul>
						<!-- Sidebar end -->

					</div>
					<!--/.nav-collapse -->

				</div>
				<!-- Fixed navbar end -->

				<!-- Page content -->
				<div id="content" class="col-md-12">

					<!-- content main container -->
					<div class="main">
						<div class="row">

							<section class="tile">

								<!-- tile header -->
								<div class="tile-header transparent">
									<h1><strong>员工</strong> 列表 </h1>
									<div class="controls">
										<a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
										<a href="#" class="remove"><i class="fa fa-times"></i></a>
									</div>
								</div>
								<!-- /tile header -->
								<!--功能查询 目标Servlet为user.html 方法为 searchByName 可获得值为 name-->
								<form class="form-horizontal" role="form" action="/user.html?method=serachByName" method="post">
									<div class="form-group">
										<label for="name" class="col-sm-2 control-label">员工查询</label></label>
										<div class="col-sm-2" style="width: 30%;">
											<input type="text" class="form-control" id="name" name="name" style="width: 70%; margin-right: 0;" />
											<button type="submit" class="btn btn-primary" style="width: 32%; top: 0; right: 0; position: absolute; height: 37px;">Submit</button>
										</div>
									</div>
								</form>
								<div class="action text-center" style="margin-left:80%;">
									<a href="#">AddEmplyee</a>
								</div>
								<!-- tile body -->
								<div class="tile-body nopadding">

									<div class="table-responsive">
										<table class="table table-datatable table-bordered" id="inlineEditDataTable">
											<thead>
												<tr>
													<th class="sort-alpha">员工名称</th>
													<th class="sort-alpha">员工账号</th>
													<th class="no-sort">员工密码</th>
													<th class="no-sort">手机号</th>
													<th class="no-sort">电子邮箱</th>
													<th class="no-sort">用户角色</th>
													<th class="no-sort">创建时间</th>
													<th class="sno-sort">登录时间</th>
													<th class="no-sort">上次登录时间</th>
													<th class="sort-numeric">登录次数</th>
													<th class="no-sort">Actions</th>
												</tr>
											</thead>
											<tbody>
											<%--获取数据的名称为 users 用户角色在Servlet中进行匹配--%>
											<c:forEach var="user" items="${users}">
												<tr class="odd gradeX">
													<td>${user.name}</td>
													<td>${user.username}</td>
													<td>${user.password}</td>
													<td>${user.mobile}</td>
													<td>${user.email}</td>
													<td>${user.rname}</td>
													<td>${user.gen_time}</td>
													<td>${user.login_time}</td>
													<td>${user.last_login_time}</td>
													<td>${user.count}</td>
													<td class="actions text-center">
														<a class="edit" href="/user.html?method=toEdit&uid=${user.uid}">Edit</a>
															<%--目标Servlet：user.html 方法：toEdit 传递参数：uid--%>
														<a class="delete" href="/user.html?method=delete&uid=${user.uid}">Delete</a>
															<%--目标Servlet：user.html 方法：delete 传递参数：uid--%>
													</td>
												</tr>
											</c:forEach>
											</tbody>
										</table>
									</div>

								</div>
								<!-- /tile body -->

							</section>

						</div>


					</div>
					<!-- /content container -->

				</div>
				<!-- Page content end -->

			</div>
			<!-- Make page fluid-->

		</div>
		<!-- Wrap all page content end -->

		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="js/jquery.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<script src="js/bootstrap.min.js"></script>
		<!--<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>-->

		<script src="js/plugins/jquery.nicescroll.min.js"></script>

		<script src="js/plugins/blockui/jquery.blockUI.js"></script>

		<script src="js/plugins/jquery.easypiechart.min.js"></script>

		<script src="js/plugins/jquery.animateNumbers.js"></script>

		<script src="js/plugins/flot/jquery.flot.min.js"></script>
		<script src="js/plugins/flot/jquery.flot.time.min.js"></script>
		<script src="js/plugins/flot/jquery.flot.selection.min.js"></script>
		<script src="js/plugins/flot/jquery.flot.animator.min.js"></script>
		<script src="js/plugins/flot/jquery.flot.orderBars.js"></script>

		<script src="js/plugins/rickshaw/raphael-min.js"></script>
		<script src="js/plugins/rickshaw/d3.v2.js"></script>
		<script src="js/plugins/rickshaw/rickshaw.min.js"></script>

		<script src="js/plugins/skycons/skycons.js"></script>

		<script src="js/plugins/jquery.sparkline.min.js"></script>

		<script src="js/plugins/summernote/summernote.min.js"></script>

		<script src="js/plugins/chosen/chosen.jquery.min.js"></script>

		<script src="js/plugins/tabdrop/bootstrap-tabdrop.min.js"></script>

		<script src="js/plugins/morris/morris.min.js"></script>

		<script src="js/minoral.js"></script>

	</body>

</html>