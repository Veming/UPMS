<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/1/2
  Time: 15:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
<div class="mask"><div id="loader"></div></div>
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
                                <li><h1>You have <strong>5</strong> new tasks</h1></li>
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
                                <li><a href="#">Check all tasks <i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </li>

                        <li class="dropdown quick-action notifications">
                            <a class="dropdown-toggle button" data-toggle="dropdown" href="#">
                                <i class="fa fa-bell"></i>
                                <span class="overlay-label orange">12</span>
                            </a>
                            <ul class="dropdown-menu wide arrow orange nopadding">
                                <li><h1>You have <strong>12</strong> new notifications</h1></li>

                                <li>
                                    <a href="#">
                                        <span class="label label-green"><i class="fa fa-user"></i></span>
                                        New user registered.
                                        <span class="small">18 mins</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <span class="label label-red"><i class="fa fa-power-off"></i></span>
                                        Server down.
                                        <span class="small">27 mins</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <span class="label label-orange"><i class="fa fa-plus"></i></span>
                                        New order.
                                        <span class="small">36 mins</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <span class="label label-cyan"><i class="fa fa-power-off"></i></span>
                                        Server restared.
                                        <span class="small">45 mins</span>
                                    </a>
                                </li>

                                <li>
                                    <a href="#">
                                        <span class="label label-amethyst"><i class="fa fa-power-off"></i></span>
                                        Server started.
                                        <span class="small">50 mins</span>
                                    </a>
                                </li>

                                <li><a href="#">Check all notifications <i class="fa fa-angle-right"></i></a></li>
                            </ul>
                        </li>

                    </ul>
                    <!-- Quick Actions end -->





                    <!-- Search -->
                    <div class="search">
                        <input type="text" placeholder="&#61442; Search in dashboard...">
                    </div>
                    <!-- Search end -->





                    <!-- User Controls -->
                    <div class="user-controls">
                        <ul>


                            <li class="dropdown messages">
                                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                    <span class="badge badge-red" id="user-new-messages">3</span> John <strong>Douey</strong> <i class="fa fa-angle-down"></i>
                                </a>
                                <div class="profile-photo">
                                    <img src="images/profile-photo.jpg" alt />
                                </div>
                                <ul class="dropdown-menu wide arrow red nopadding">
                                    <li><h1>You have <strong>3</strong> new messages</h1></li>

                                    <li>
                                        <a class="cyan" href="#">
                                            <div class="profile-photo">
                                                <img src="images/ici-avatar.jpg" alt />
                                            </div>
                                            <div class="message-info">
                                                <span class="sender">Ing. Imrich Kamarel</span>
                                                <span class="time">12 mins</span>
                                                <div class="message-content">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum</div>
                                            </div>
                                        </a>
                                    </li>

                                    <li>
                                        <a class="green" href="#">
                                            <div class="profile-photo">
                                                <img src="images/arnold-avatar.jpg" alt />
                                            </div>
                                            <div class="message-info">
                                                <span class="sender">Arnold Karlsberg</span>
                                                <span class="time">1 hour</span>
                                                <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                                            </div>
                                        </a>
                                    </li>

                                    <li>
                                        <a href="#">
                                            <div class="profile-photo">
                                                <img src="images/profile-photo.jpg" alt />
                                            </div>
                                            <div class="message-info">
                                                <span class="sender">John Douey</span>
                                                <span class="time">3 hours</span>
                                                <div class="message-content">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia</div>
                                            </div>
                                        </a>
                                    </li>

                                    <li>
                                        <a class="red" href="#">
                                            <div class="profile-photo">
                                                <img src="images/peter-avatar.jpg" alt />
                                            </div>
                                            <div class="message-info">
                                                <span class="sender">Peter Kay</span>
                                                <span class="time">5 hours</span>
                                                <div class="message-content">Ut enim ad minim veniam, quis nostrud exercitation</div>
                                            </div>
                                        </a>
                                    </li>

                                    <li>
                                        <a class="orange" href="#">
                                            <div class="profile-photo">
                                                <img src="images/george-avatar.jpg" alt />
                                            </div>
                                            <div class="message-info">
                                                <span class="sender">George McCain</span>
                                                <span class="time">6 hours</span>
                                                <div class="message-content">Lorem ipsum dolor sit amet, consectetur adipisicing elit</div>
                                            </div>
                                        </a>
                                    </li>


                                    <li><a href="#">Check all messages <i class="fa fa-angle-right"></i></a></li>
                                </ul>
                            </li>

                            <li class="dropdown settings">
                                <a class="dropdown-toggle options" data-toggle="dropdown" href="#">
                                    <i class="fa fa-cog"></i>
                                </a>

                                <ul class="dropdown-menu arrow">

                                    <li>
                                        <h3>Color schemes:</h3>
                                        <ul id="color-schemes">
                                            <li><a href="#" class="brownish-scheme" title="Brownish"></a></li>
                                            <li><a href="#" class="darkgrey-scheme" title="Dark Grey"></a></li>
                                            <li><a href="#" class="lightgrey-scheme" title="Light Grey"></a></li>
                                            <li><a href="#" class="cyan-scheme" title="Cyan"></a></li>
                                            <li><a href="#" class="red-scheme" title="Red"></a></li>
                                            <li><a href="#" class="orange-scheme" title="Orange"></a></li>
                                            <li><a href="#" class="green-scheme" title="Green"></a></li>
                                            <li><a href="#" class="amethyst-scheme" title="Amethyst"></a></li>
                                        </ul>
                                    </li>

                                    <li class="divider"></li>

                                    <li>
                                        <a href="#"><i class="fa fa-user"></i> Profile</a>
                                    </li>

                                    <li>
                                        <a href="#"><i class="fa fa-calendar"></i> Calendar</a>
                                    </li>

                                    <li>
                                        <a href="#"><i class="fa fa-envelope"></i> Inbox <span class="badge badge-red" id="user-inbox">3</span></a>
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
                    <li class="dropdown open">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Dashboard">
                            <i class="fa fa-dashboard">
                                <span class="overlay-label red"></span>
                            </i>
                            Dashboard <b class="fa fa-angle-left dropdown-arrow"></b>
                            <span class="badge badge-cyan">1</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li class="active">
                                <a href="index.html" title="Overview">
                                    <i class="fa fa-eye"><span class="overlay-label red80"></span></i>
                                    Overview
                                </a>
                            </li>
                            <li>
                                <a href="mail.html" title="Inbox">
                                    <i class="fa fa-envelope"><span class="overlay-label red60"></span></i>
                                    Inbox
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Forms">
                            <i class="fa fa-list">
                                <span class="overlay-label green"></span>
                            </i>
                            Forms <b class="fa fa-angle-left dropdown-arrow"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="form-elements.html" title="Common Elements">
                                    <i class="fa fa-thumb-tack"><span class="overlay-label green80"></span></i>
                                    Common Elements
                                </a>
                            </li>
                            <li>
                                <a href="validation-elements.html" title="Validation">
                                    <i class="fa fa-check-square"><span class="overlay-label green60"></span></i>
                                    Validation
                                </a>
                            </li>
                            <li>
                                <a href="form-wizard.html"  title="Form Wizard">
                                    <i class="fa fa-shield"><span class="overlay-label green40"></span></i>
                                    Form Wizard
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Interface">
                            <i class="fa fa-pencil">
                                <span class="overlay-label amethyst"></span>
                            </i>
                            Interface <b class="fa fa-angle-left dropdown-arrow"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="ui-elements.html" title="UI Elements">
                                    <i class="fa fa-puzzle-piece"><span class="overlay-label amethyst80"></span></i>
                                    UI Elements
                                </a>
                            </li>
                            <li>
                                <a href="typography.html" title="Typography">
                                    <i class="fa fa-font"><span class="overlay-label amethyst60"></span></i>
                                    Typography
                                </a>
                            </li>
                            <li>
                                <a href="nestable.html" title="Nestable Lists">
                                    <i class="fa fa-arrows"><span class="overlay-label amethyst40"></span></i>
                                    Nestable Lists
                                </a>
                            </li>
                            <li>
                                <a href="tiles.html" title="Tiles">
                                    <i class="fa fa-th"><span class="overlay-label amethyst40"></span></i>
                                    Tiles
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="buttons.html" title="Buttons & Icons">
                            <i class="fa fa-tint">
                                <span class="overlay-label orange"></span>
                            </i>
                            Buttons & Icons
                        </a>
                    </li>
                    <li>
                        <a href="grid.html" title="Grid Layout">
                            <i class="fa fa-th">
                                <span class="overlay-label cyan"></span>
                            </i>
                            Grid Layout
                        </a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Tables">
                            <i class="fa fa-th-large">
                                <span class="overlay-label greensea"></span>
                            </i>
                            Tables <b class="fa fa-angle-left dropdown-arrow"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="tables.html" title="Bootstrap Tables">
                                    <i class="fa fa-puzzle-piece"><span class="overlay-label greensea80"></span></i>
                                    Bootstrap Tables
                                </a>
                            </li>
                            <li>
                                <a href="datatables.html" title="DataTables">
                                    <i class="fa fa-lightbulb-o"><span class="overlay-label greensea60"></span></i>
                                    DataTables
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" title="Example Pages">
                            <i class="fa fa-desktop">
                                <span class="overlay-label drank"></span>
                            </i>
                            Example Pages <b class="fa fa-angle-left dropdown-arrow"></b>
                            <span class="label label-greensea">mails</span>
                        </a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="login.html" title="Login Page">
                                    <i class="fa fa-user"><span class="overlay-label drank80"></span></i>
                                    Login Page
                                </a>
                            </li>
                            <li>
                                <a href="calendar.html" title="Calendar">
                                    <i class="fa fa-calendar"><span class="overlay-label drank60"></span></i>
                                    Calendar
                                </a>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown-submenu" title="Mail">
                                    <i class="fa fa-exclamation-circle"><span class="overlay-label drank40"></span></i>
                                    Error Pages <b class="fa fa-angle-left dropdown-arrow"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="page404.html" title="Page 404">
                                            <i class="fa fa-level-up"></i>
                                            Page 404
                                        </a>
                                    </li>
                                    <li>
                                        <a href="page403.html" title="Page 403">
                                            <i class="fa fa-level-up"></i>
                                            Page 403
                                        </a>
                                    </li>
                                    <li>
                                        <a href="page500.html" title="Page 500">
                                            <i class="fa fa-level-up"></i>
                                            Page 500
                                        </a>
                                    </li>
                                    <li>
                                        <a href="page503.html" title="Page 503">
                                            <i class="fa fa-level-up"></i>
                                            Page 503
                                        </a>
                                    </li>
                                    <li>
                                        <a href="page-offline.html" title="Page Offline">
                                            <i class="fa fa-level-up"></i>
                                            Offline
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="gallery.html" title="Gallery">
                                    <i class="fa fa-camera"><span class="overlay-label drank20"></span></i>
                                    Gallery
                                </a>
                            </li>
                            <li>
                                <a href="timeline.html" title="Timeline">
                                    <i class="fa fa-clock-o"><span class="overlay-label drank20"></span></i>
                                    Timeline
                                </a>
                            </li>
                            <li>
                                <a href="chat.html" title="Chat">
                                    <i class="fa fa-comments"><span class="overlay-label drank20"></span></i>
                                    Chat
                                </a>
                            </li>
                            <li>
                                <a href="search-result.html" title="Search Results">
                                    <i class="fa fa-search"><span class="overlay-label drank20"></span></i>
                                    Search Results
                                </a>
                            </li>
                            <li>
                                <a href="nav-right.html" title="RTL Direction">
                                    <i class="fa fa-align-right"><span class="overlay-label drank20"></span></i>
                                    RTL Direction
                                </a>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown-submenu" title="Mail">
                                    <i class="fa fa-envelope"><span class="overlay-label drank20"></span></i>
                                    Mail <b class="fa fa-angle-left dropdown-arrow"></b>
                                    <span class="label label-greensea">mails</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="mail.html" title="Vertical View">
                                            <i class="fa fa-level-up"></i>
                                            Vertical View
                                            <span class="label label-greensea">mails</span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="mail-horizontal.html" title="Horizontal View">
                                            <i class="fa fa-level-up"></i>
                                            Horizontal View
                                            <span class="badge badge-red">3</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="dropdown-submenu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown-submenu" title="Maps">
                                    <i class="fa fa-map-marker"><span class="overlay-label drank20"></span></i>
                                    Maps <b class="fa fa-angle-left dropdown-arrow"></b>
                                    <span class="badge badge-red">2</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="vector-maps.html" title="Vector Maps">
                                            <i class="fa fa-level-up"></i>
                                            Vector Maps
                                        </a>
                                    </li>
                                    <li>
                                        <a href="google-maps.html" title="Google Maps">
                                            <i class="fa fa-level-up"></i>
                                            Google Maps
                                        </a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="widgets.html" title="Widgets">
                            <i class="fa fa-play-circle">
                                <span class="overlay-label hotpink"></span>
                            </i>
                            Widgets
                        </a>
                    </li>
                    <li>
                        <a href="charts.html" title="Charts & Graphs">
                            <i class="fa fa-bar-chart-o">
                                <span class="overlay-label dutch"></span>
                            </i>
                            Charts & Graphs
                        </a>
                    </li>
                </ul>
                <!-- Sidebar end -->





            </div>
            <!--/.nav-collapse -->





        </div>
        <!-- Fixed navbar end -->






        <!-- Page content -->
        <div id="content" class="col-md-12">









            <!-- breadcrumbs -->
            <div class="breadcrumbs">
                <ol class="breadcrumb">
                    <li><a href="index.html"><i class="fa fa-home"></i> Home</a></li>
                    <li><a href="index.html">Dashboard</a></li>
                    <li class="active">Overview</li>
                </ol>
            </div>
            <!-- /breadcrumbs -->







            <!-- submenu -->
            <div class="submenu">
                <h1>Dashboard</h1>
                <div class="collapsed">
                    <a href="#" id="submenutoggle"><h1>Dashboard <i class="fa fa-bars"></i></h1></a>
                </div>
                <ul class="nav nav-tabs">
                    <li class="active"><a href="index.html">Overview</a></li>
                    <li><a href="mail.html">Inbox</a></li>
                </ul>
            </div>
            <!-- /submenu -->








            <!-- content main container -->
            <div class="main">




                <!-- cards -->
                <div class="row cards">

                    <div class="card-container col-lg-3 col-md-6 col-sm-12">
                        <div class="card card-red hover">
                            <div class="front">
                                <h1>New Users</h1>
                                <p id="users-count">0</p>
                                <span class="fa-stack fa-2x pull-right">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-user fa-stack-1x"></i>
                      <span class="easypiechart" data-percent="100" data-line-width="4" data-size="80" data-line-cap="butt" data-animate="2000" data-target="#users-count" data-update="3000" data-bar-color="white" data-scale-color="false" data-track-color="rgba(0, 0, 0, 0.15)"></span>
                    </span>
                            </div>
                            <div class="back">
                                <ul class="inline divided">
                                    <li>
                                        <h1>Total Users</h1>
                                        <p>3541</p>
                                    </li>
                                    <li>
                                        <h1>Last Month</h1>
                                        <p>698</p>
                                    </li>
                                </ul>
                                <div class="summary negative">13% <i class="fa fa-arrow-down"></i> this month</div>
                                <!-- Button trigger modal -->
                                <button class="btn show-code" data-toggle="modal" data-target="#codeModal01">
                                    show code
                                </button>
                            </div>
                        </div>
                    </div>


                    <!-- Modal -->
                    <div class="modal fade" id="codeModal01" tabindex="-1" role="dialog" aria-labelledby="cardCode01" aria-hidden="true">
                        <div class="modal-dialog wide">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="cardCode01">Users Card - Source Code</h4>
                                </div>
                                <div class="modal-body">



                                    <!-- Source Code -->
                                    <pre class="prettyprint linenums">
//card container
&lt;div class="card-container col-lg-3 col-md-6 col-sm-12"&gt;

  //define card color with .card-red
  &lt;div class="card card-red hover"&gt;

    //front side of card
    &lt;div class="front"&gt;
      &lt;h1&gt;New Users&lt;/h1&gt;
      &lt;p id="users-count"&gt;0&lt;/p&gt;

      //icon circle
      &lt;span class="fa-stack fa-2x pull-right"&gt;
        &lt;i class="fa fa-circle fa-stack-2x"&gt;&lt;/i&gt;
        &lt;i class="fa fa-user fa-stack-1x"&gt;&lt;/i&gt;

        //chart around icon
        &lt;span class="easypiechart" data-percent="100" data-line-width="4" data-size="80" data-line-cap="butt" data-animate="2000" data-target="#users-count" data-update="3000" data-bar-color="white" data-scale-color="false" data-track-color="rgba(0, 0, 0, 0.15)"&gt;&lt;/span&gt;
      &lt;/span&gt;
    &lt;/div&gt;

    //back side of card
    &lt;div class="back"&gt;
      &lt;ul class="inline divided"&gt;
        &lt;li&gt;
          &lt;h1&gt;Total Users&lt;/h1&gt;
          &lt;p&gt;3541&lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
          &lt;h1&gt;Last Month&lt;/h1&gt;
          &lt;p&gt;698&lt;/p&gt;
        &lt;/li&gt;
      &lt;/ul&gt;
      &lt;div class="summary negative"&gt;13% &lt;i class="fa fa-arrow-down"&gt;&lt;/i&gt; this month&lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;

//****************************//
//*********** jquery *********//
//****************************//

// Initialize card flip
$('.card.hover').hover(function(){
  $(this).addClass('flip');
},function(){
  $(this).removeClass('flip');
});

// Make card front & back side same

$('.card').each(function() {
  var front = $('.card .front');
  var back = $('.card .back');
  var frontH = front.height();
  var backH = back.height();



  if (backH > frontH) {
    front.height(backH - 8);
  }
});

//generate pie charts
$('.easypiechart').easyPieChart();

//animate numbers on cards
$("#users-count").animateNumbers(Math.round( Math.random() * 1000 ));

//update instance every 5 sec
window.setInterval(function() {

  //animate numbers on cards
  $( '#users-count' ).animateNumbers( Math.round( Math.random() * 1000 ) );

  //refresh every pie chart
  $('.easypiechart').each(function() {
    $(this).data('easyPieChart').update(Math.floor(100*Math.random()));
  });

}, 5000);
</pre>
                                    <!-- /Source Code -->



                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->


                    <div class="card-container col-lg-3 col-md-6 col-sm-12">
                        <div class="card card-cyan hover">
                            <div class="front">
                                <h1>New Orders</h1>
                                <p id="orders-count">0</p>
                                <span class="fa-stack fa-2x pull-right">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-shopping-cart fa-stack-1x"></i>
                      <span class="easypiechart" data-percent="55" data-line-width="4" data-size="80" data-line-cap="butt" data-animate="2000" data-target="#orders-count" data-update="3000" data-bar-color="white" data-scale-color="false" data-track-color="rgba(0, 0, 0, 0.15)"></span>
                    </span>
                            </div>
                            <div class="back">
                                <ul class="inline divided">
                                    <li>
                                        <h1>Total Orders</h1>
                                        <p>842</p>
                                    </li>
                                    <li>
                                        <h1>Last Month</h1>
                                        <p>151</p>
                                    </li>
                                </ul>
                                <div class="summary positive">6% <i class="fa fa-arrow-up"></i> this month</div>
                                <button class="btn show-code" data-toggle="modal" data-target="#codeModal02">
                                    show code
                                </button>
                            </div>
                        </div>
                    </div>



                    <!-- Modal -->
                    <div class="modal fade" id="codeModal02" tabindex="-1" role="dialog" aria-labelledby="cardCode02" aria-hidden="true">
                        <div class="modal-dialog wide">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="cardCode02">Orders Card - Source Code</h4>
                                </div>
                                <div class="modal-body">



                                    <!-- Source Code -->
                                    <pre class="prettyprint linenums">
//card container
&lt;div class="card-container col-lg-3 col-md-6 col-sm-12"&gt;

  //define card color with .card-cyan
  &lt;div class="card card-cyan hover"&gt;

    //front side of card
    &lt;div class="front"&gt;
      &lt;h1&gt;New Orders&lt;/h1&gt;
      &lt;p id="orders-count"&gt;0&lt;/p&gt;

      //icon circle
      &lt;span class="fa-stack fa-2x pull-right"&gt;
        &lt;i class="fa fa-circle fa-stack-2x"&gt;&lt;/i&gt;
        &lt;i class="fa fa-shopping-cart fa-stack-1x"&gt;&lt;/i&gt;

        //chart around icon
        &lt;span class="easypiechart" data-percent="55" data-line-width="4" data-size="80" data-line-cap="butt" data-animate="2000" data-target="#orders-count" data-update="3000" data-bar-color="white" data-scale-color="false" data-track-color="rgba(0, 0, 0, 0.15)"&gt;&lt;/span&gt;
      &lt;/span&gt;
    &lt;/div&gt;

    //back side of card
    &lt;div class="back"&gt;
      &lt;ul class="inline divided"&gt;
        &lt;li&gt;
          &lt;h1&gt;Total Orders&lt;/h1&gt;
          &lt;p&gt;842&lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
          &lt;h1&gt;Last Month&lt;/h1&gt;
          &lt;p&gt;151&lt;/p&gt;
        &lt;/li&gt;
      &lt;/ul&gt;
      &lt;div class="summary positive"&gt;6% &lt;i class="fa fa-arrow-up"&gt;&lt;/i&gt; this month&lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;

//****************************//
//*********** jquery *********//
//****************************//

// Initialize card flip
$('.card.hover').hover(function(){
  $(this).addClass('flip');
},function(){
  $(this).removeClass('flip');
});

// Make card front & back side same

$('.card').each(function() {
  var front = $('.card .front');
  var back = $('.card .back');
  var frontH = front.height();
  var backH = back.height();



  if (backH > frontH) {
    front.height(backH - 8);
  }
});

//generate pie charts
$('.easypiechart').easyPieChart();

//animate numbers on cards
$("#orders-count").animateNumbers(Math.round( Math.random() * 1000 ));

//update instance every 5 sec
window.setInterval(function() {

  //animate numbers on cards
  $( '#orders-count' ).animateNumbers( Math.round( Math.random() * 1000 ) );

  //refresh every pie chart
  $('.easypiechart').each(function() {
    $(this).data('easyPieChart').update(Math.floor(100*Math.random()));
  });

}, 5000);
</pre>
                                    <!-- /Source Code -->



                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->



                    <div class="card-container col-lg-3 col-md-6 col-sm-12">
                        <div class="card card-green hover">
                            <div class="front">
                                <h1>Sales</h1>
                                <p id="sales-count">0</p>
                                <span class="fa-stack fa-2x pull-right">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-usd fa-stack-1x"></i>
                      <span class="easypiechart" data-percent="30" data-line-width="4" data-size="80" data-line-cap="butt" data-animate="2000" data-target="#sales-count" data-update="3000" data-bar-color="white" data-scale-color="false" data-track-color="rgba(0, 0, 0, 0.15)"></span>
                    </span>
                            </div>
                            <div class="back">
                                <ul class="inline divided">
                                    <li>
                                        <h1>Total Sales</h1>
                                        <p>25,165</p>
                                    </li>
                                    <li>
                                        <h1>Last Month</h1>
                                        <p>3,154</p>
                                    </li>
                                </ul>
                                <div class="summary positive">18% <i class="fa fa-arrow-up"></i> this month</div>
                                <button class="btn show-code" data-toggle="modal" data-target="#codeModal03">
                                    show code
                                </button>
                            </div>
                        </div>
                    </div>


                    <!-- Modal -->
                    <div class="modal fade" id="codeModal03" tabindex="-1" role="dialog" aria-labelledby="cardCode03" aria-hidden="true">
                        <div class="modal-dialog wide">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="cardCode03">Sales Card - Source Code</h4>
                                </div>
                                <div class="modal-body">



                                    <!-- Source Code -->
                                    <pre class="prettyprint linenums">
//card container
&lt;div class="card-container col-lg-3 col-md-6 col-sm-12"&gt;

  //define card color with .card-green
  &lt;div class="card card-green hover"&gt;

    //front side of card
    &lt;div class="front"&gt;
      &lt;h1&gt;Sales&lt;/h1&gt;
      &lt;p id="sales-count"&gt;0&lt;/p&gt;

      //icon circle
      &lt;span class="fa-stack fa-2x pull-right"&gt;
        &lt;i class="fa fa-circle fa-stack-2x"&gt;&lt;/i&gt;
        &lt;i class="fa fa-usd fa-stack-1x"&gt;&lt;/i&gt;

        //chart around icon
        &lt;span class="easypiechart" data-percent="30" data-line-width="4" data-size="80" data-line-cap="butt" data-animate="2000" data-target="#sales-count" data-update="3000" data-bar-color="white" data-scale-color="false" data-track-color="rgba(0, 0, 0, 0.15)"&gt;&lt;/span&gt;
      &lt;/span&gt;
    &lt;/div&gt;

    //back side of card
    &lt;div class="back"&gt;
      &lt;ul class="inline divided"&gt;
        &lt;li&gt;
          &lt;h1&gt;Total Sales&lt;/h1&gt;
          &lt;p&gt;25,165&lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
          &lt;h1&gt;Last Month&lt;/h1&gt;
          &lt;p&gt;3,154&lt;/p&gt;
        &lt;/li&gt;
      &lt;/ul&gt;
      &lt;div class="summary positive"&gt;18% &lt;i class="fa fa-arrow-up"&gt;&lt;/i&gt; this month&lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;

//****************************//
//*********** jquery *********//
//****************************//

// Initialize card flip
$('.card.hover').hover(function(){
  $(this).addClass('flip');
},function(){
  $(this).removeClass('flip');
});

// Make card front & back side same

$('.card').each(function() {
  var front = $('.card .front');
  var back = $('.card .back');
  var frontH = front.height();
  var backH = back.height();



  if (backH > frontH) {
    front.height(backH - 8);
  }
});

//generate pie charts
$('.easypiechart').easyPieChart();

//animate numbers on cards
$("#sales-count").animateNumbers(Math.round( Math.random() * 1000 ));

//update instance every 5 sec
window.setInterval(function() {

  //animate numbers on cards
  $( '#sales-count' ).animateNumbers( Math.round( Math.random() * 1000 ) );

  //refresh every pie chart
  $('.easypiechart').each(function() {
    $(this).data('easyPieChart').update(Math.floor(100*Math.random()));
  });

}, 5000);
</pre>
                                    <!-- /Source Code -->



                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->



                    <div class="card-container col-lg-3 col-md-6 col-sm-12">
                        <div class="card card-orange hover">
                            <div class="front">
                                <h1>Visits</h1>
                                <p id="visits-count">0</p>
                                <span class="fa-stack fa-2x pull-right">
                      <i class="fa fa-circle fa-stack-2x"></i>
                      <i class="fa fa-eye fa-stack-1x"></i>
                      <span class="easypiechart" data-percent="90" data-line-width="4" data-size="80" data-line-cap="butt" data-animate="2000" data-target="#visits-count" data-update="3000" data-bar-color="white" data-scale-color="false" data-track-color="rgba(0, 0, 0, 0.15)"></span>
                    </span>
                            </div>
                            <div class="back">
                                <ul class="inline divided">
                                    <li>
                                        <h1>Total Visits</h1>
                                        <p>48,694</p>
                                    </li>
                                    <li>
                                        <h1>Last Month</h1>
                                        <p>9,514</p>
                                    </li>
                                </ul>
                                <div class="summary negative">2% <i class="fa fa-arrow-down"></i> this month</div>
                                <button class="btn show-code" data-toggle="modal" data-target="#codeModal04">
                                    show code
                                </button>
                            </div>
                        </div>
                    </div>



                    <!-- Modal -->
                    <div class="modal fade" id="codeModal04" tabindex="-1" role="dialog" aria-labelledby="cardCode04" aria-hidden="true">
                        <div class="modal-dialog wide">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title" id="cardCode04">Visits Card - Source Code</h4>
                                </div>
                                <div class="modal-body">



                                    <!-- Source Code -->
                                    <pre class="prettyprint linenums">
//card container
&lt;div class="card-container col-lg-3 col-md-6 col-sm-12"&gt;

  //define card color with .card-orange
  &lt;div class="card card-orange hover"&gt;

    //front side of card
    &lt;div class="front"&gt;
      &lt;h1&gt;Visits&lt;/h1&gt;
      &lt;p id="visits-count"&gt;0&lt;/p&gt;

      //icon circle
      &lt;span class="fa-stack fa-2x pull-right"&gt;
        &lt;i class="fa fa-circle fa-stack-2x"&gt;&lt;/i&gt;
        &lt;i class="fa fa-eye fa-stack-1x"&gt;&lt;/i&gt;

        //chart around icon
        &lt;span class="easypiechart" data-percent="90" data-line-width="4" data-size="80" data-line-cap="butt" data-animate="2000" data-target="#visits-count" data-update="3000" data-bar-color="white" data-scale-color="false" data-track-color="rgba(0, 0, 0, 0.15)"&gt;&lt;/span&gt;
      &lt;/span&gt;
    &lt;/div&gt;

    //back side of card
    &lt;div class="back"&gt;
      &lt;ul class="inline divided"&gt;
        &lt;li&gt;
          &lt;h1&gt;Total Visits&lt;/h1&gt;
          &lt;p&gt;48,694&lt;/p&gt;
        &lt;/li&gt;
        &lt;li&gt;
          &lt;h1&gt;Last Month&lt;/h1&gt;
          &lt;p&gt;9,514&lt;/p&gt;
        &lt;/li&gt;
      &lt;/ul&gt;
      &lt;div class="summary negative"&gt;2% &lt;i class="fa fa-arrow-down"&gt;&lt;/i&gt; this month&lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;

//****************************//
//*********** jquery *********//
//****************************//

// Initialize card flip
$('.card.hover').hover(function(){
  $(this).addClass('flip');
},function(){
  $(this).removeClass('flip');
});

// Make card front & back side same
$('.card').each(function() {
  var front = $('.card .front');
  var back = $('.card .back');
  var frontH = front.height();
  var backH = back.height();



  if (backH > frontH) {
    front.height(backH - 8);
  }
});

//generate pie charts
$('.easypiechart').easyPieChart();

//animate numbers on cards
$("#visits-count").animateNumbers(Math.round( Math.random() * 1000 ));

//update instance every 5 sec
window.setInterval(function() {

  //animate numbers on cards
  $( '#visits-count' ).animateNumbers( Math.round( Math.random() * 1000 ) );

  //refresh every pie chart
  $('.easypiechart').each(function() {
    $(this).data('easyPieChart').update(Math.floor(100*Math.random()));
  });

}, 5000);
</pre>
                                    <!-- /Source Code -->



                                </div>
                            </div><!-- /.modal-content -->
                        </div><!-- /.modal-dialog -->
                    </div><!-- /.modal -->




                </div>
                <!-- /cards -->





                <!-- row -->
                <div class="row">




                    <!-- col 8 -->
                    <div class="col-lg-8 col-md-12">




                        <!-- tile -->
                        <section class="tile cornered">




                            <!-- tile header -->
                            <div class="tile-header color greensea">
                                <h1 class="big-thin">Statistics</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->


                            <!-- tile widget -->
                            <div class="tile-widget color greensea">
                                <div id="statistics-chart" class="chart statistics" style="height: 250px;"></div>
                            </div>
                            <!-- /tile widget -->


                            <!-- tile body -->
                            <div class="tile-body">
                                <div class="row">
                                    <ul class="inline">
                                        <li class="col-md-8 col-sm-12 col-xs-12 text-center">
                                            <h5 class="underline text-left">Actual Statistics</h5>

                                            <div class="inner-container inline">
                                                <div data-percent="100" data-size="140" class="pie-chart inline" data-scale-color="false" data-track-color="#ffffff" data-bar-color="#a2d200" data-line-width="5">
                                                    <div class="text-center">
                                                        <i class="fa fa-usd fa-5x green-text"></i>
                                                    </div>
                                                </div>
                                                <p class="chart-overall text-center medium-thin uppercase nomargin"><span class="green-text big-thin animate-number" data-value="6175" data-animation-duration="2500">0</span> Sales</p>
                                                <p class="chart-overall text-center little-thin uppercase"><span class="green-text">18% <i class="fa fa-arrow-up "></i></span> this month</p>
                                            </div>


                                            <div class="inner-container inline">
                                                <div data-percent="85" data-size="140" class="pie-chart inline" data-scale-color="false" data-track-color="#ffffff" data-bar-color="#ffc100" data-line-width="5">
                                                    <div class="text-center">
                                                        <span><i class="fa fa-eye fa-5x orange-text"></i></span>
                                                    </div>
                                                </div>
                                                <p class="chart-overall text-center medium-thin uppercase nomargin"><span class="orange-text big-thin animate-number" data-value="8213" data-animation-duration="2500">0</span> Visits</p>
                                                <p class="chart-overall text-center little-thin uppercase"><span class="red-text">2% <i class="fa fa-arrow-down"></i></span> this month</p>
                                            </div>

                                        </li>
                                        <li class="col-md-4 col-sm-12 col-xs-12">
                                            <h5 class="underline">Visitors Statistics</h5>
                                            <ul class="progress-list">
                                                <li>
                                                    <div class="details">
                                                        <div class="title">America</div>
                                                        <div class="description">Visitors from America</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="40" data-animation-duration="1500">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little no-radius">
                                                        <div class="progress-bar progress-bar-green animate-progress-bar" data-percentage="40%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="details">
                                                        <div class="title">Europe</div>
                                                        <div class="description">Visitors from Europe</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="38" data-animation-duration="1000">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little no-radius">
                                                        <div class="progress-bar progress-bar-cyan animate-progress-bar" data-percentage="35%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="details">
                                                        <div class="title">Asia</div>
                                                        <div class="description">Visitors from Asia</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="12" data-animation-duration="800">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little no-radius">
                                                        <div class="progress-bar progress-bar-amethyst animate-progress-bar" data-percentage="12%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="details">
                                                        <div class="title">Africa</div>
                                                        <div class="description">Visitors from Africa</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="7" data-animation-duration="600">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little no-radius">
                                                        <div class="progress-bar progress-bar-orange animate-progress-bar" data-percentage="7%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="details">
                                                        <div class="title">Other</div>
                                                    </div>
                                                    <div class="status pull-right">
                                                        <span class="animate-number" data-value="6" data-animation-duration="400">0</span>%
                                                    </div>
                                                    <div class="clearfix"></div>
                                                    <div class="progress progress-little no-radius">
                                                        <div class="progress-bar progress-bar-red animate-progress-bar" data-percentage="6%" style="width: 0%;"></div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <!-- /tile body -->


                            <!-- show code btn -->
                            <button class="btn show-code" data-toggle="modal" data-target="#codeModal05">
                                show code
                            </button>
                            <!-- /show code btn -->



                            <!-- Modal -->
                            <div class="modal fade" id="codeModal05" tabindex="-1" role="dialog" aria-labelledby="tileCode01" aria-hidden="true">
                                <div class="modal-dialog wide">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="tileCode01">Statistics tile - Source Code</h4>
                                        </div>
                                        <div class="modal-body">


                                            <!-- Source Code -->
                                            <pre class="prettyprint linenums">
//tile
&lt;section class="tile"&gt;

  //tile header
  &lt;div class="tile-header"&gt;
    &lt;h1 class="big-thin"&gt;Statistics&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  //tile widget
  &lt;div class="tile-widget color greensea"&gt;

    //generate chart here
    &lt;div id="statistics-chart" class="chart statistics" style="height: 250px;"&gt;&lt;/div&gt;
  &lt;/div&gt;
  // /tile widget

  //tile body
  &lt;div class="tile-body"&gt;

    // row
    &lt;div class="row"&gt;
      &lt;ul class="inline divided"&gt;
        &lt;li class="col-md-8 col-sm-12 col-xs-12 text-center"&gt;
          &lt;h5 class="underline text-left"&gt;Actual Statistics&lt;/h5&gt;

          //pie chart container
          &lt;div class="inner-container inline"&gt;

            //generate pie chart
            &lt;div data-percent="100" data-size="140" class="pie-chart inline" data-scale-color="false" data-track-color="#ffffff" data-bar-color="a2d200" data-line-width="5" style="width: 140px; height: 140px;"&gt;
              &lt;div class="text-center"&gt;
                &lt;i class="fa fa-usd fa-5x green-text"&gt;&lt;/i&gt;
              &lt;/div&gt;
            &lt;/div&gt;
            &lt;p class="chart-overall text-center medium-thin uppercase nomargin"&gt;&lt;span class="green-text big-thin animate-number" data-value="6175" data-animation-duration="2500"&gt;0&lt;/span&gt; Sales&lt;/p&gt;
            &lt;p class="chart-overall text-center little-thin uppercase"&gt;&lt;span class="green-text"&gt;18% &lt;i class="fa fa-arrow-up "&gt;&lt;/i&gt;&lt;/span&gt; this month&lt;/p&gt;
          &lt;/div&gt;
          // /pie chart container

          //pie chart container
          &lt;div class="inner-container inline"&gt;

            //generate pie chart
            &lt;div data-percent="85" data-size="140" class="pie-chart inline" data-scale-color="false" data-track-color="#ffffff" data-bar-color="ffc100" data-line-width="5" style="width: 140px; height: 140px;"&gt;
              &lt;div class="text-center"&gt;
                &lt;span&gt;&lt;i class="fa fa-eye fa-5x orange-text"&gt;&lt;/i&gt;&lt;/span&gt;
              &lt;/div&gt;
            &lt;/div&gt;
            &lt;p class="chart-overall text-center medium-thin uppercase nomargin"&gt;&lt;span class="orange-text big-thin animate-number" data-value="8213" data-animation-duration="2500"&gt;0&lt;/span&gt; Visits&lt;/p&gt;
            &lt;p class="chart-overall text-center little-thin uppercase"&gt;&lt;span class="red-text"&gt;2% &lt;i class="fa fa-arrow-down"&gt;&lt;/i&gt;&lt;/span&gt; this month&lt;/p&gt;
          &lt;/div&gt;
          // /pie chart container

        &lt;/li&gt;
        &lt;li class="col-md-4 col-sm-12 col-xs-12"&gt;
          &lt;h5 class="underline"&gt;Visitors Statistics&lt;/h5&gt;

          //progress bars
          &lt;ul class="progress-list"&gt;
            &lt;li&gt;
              &lt;div class="details"&gt;
                &lt;div class="title"&gt;America&lt;/div&gt;
                &lt;div class="description"&gt;Visitors from America&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class="status pull-right"&gt;
                &lt;span class="animate-number" data-value="40" data-animation-duration="1500"&gt;0&lt;/span&gt;%
              &lt;/div&gt;
              &lt;div class="clearfix"&gt;&lt;/div&gt;
              &lt;div class="progress progress-little no-radius"&gt;
                &lt;div class="progress-bar progress-bar-green animate-progress-bar" data-percentage="40%" style="width: 0%;"&gt;&lt;/div&gt;
              &lt;/div&gt;
            &lt;/li&gt;
            &lt;li&gt;
              &lt;div class="details"&gt;
                &lt;div class="title"&gt;Europe&lt;/div&gt;
                &lt;div class="description"&gt;Visitors from Europe&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class="status pull-right"&gt;
                 &lt;span class="animate-number" data-value="38" data-animation-duration="1000"&gt;0&lt;/span&gt;%
              &lt;/div&gt;
              &lt;div class="clearfix"&gt;&lt;/div&gt;
              &lt;div class="progress progress-little no-radius"&gt;
                &lt;div class="progress-bar progress-bar-cyan animate-progress-bar" data-percentage="35%" style="width: 0%;"&gt;&lt;/div&gt;
              &lt;/div&gt;
            &lt;/li&gt;
            &lt;li&gt;
              &lt;div class="details"&gt;
                &lt;div class="title"&gt;Asia&lt;/div&gt;
                &lt;div class="description"&gt;Visitors from Asia&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class="status pull-right"&gt;
                &lt;span class="animate-number" data-value="12" data-animation-duration="800"&gt;0&lt;/span&gt;%
              &lt;/div&gt;
              &lt;div class="clearfix"&gt;&lt;/div&gt;
              &lt;div class="progress progress-little no-radius"&gt;
                &lt;div class="progress-bar progress-bar-amethyst animate-progress-bar" data-percentage="12%" style="width: 0%;"&gt;&lt;/div&gt;
              &lt;/div&gt;
            &lt;/li&gt;
            &lt;li&gt;
              &lt;div class="details"&gt;
                &lt;div class="title"&gt;Africa&lt;/div&gt;
                &lt;div class="description"&gt;Visitors from Africa&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class="status pull-right"&gt;
                &lt;span class="animate-number" data-value="7" data-animation-duration="600"&gt;0&lt;/span&gt;%
              &lt;/div&gt;
              &lt;div class="clearfix"&gt;&lt;/div&gt;
              &lt;div class="progress progress-little no-radius"&gt;
                &lt;div class="progress-bar progress-bar-orange animate-progress-bar" data-percentage="7%" style="width: 0%;"&gt;&lt;/div&gt;
              &lt;/div&gt;
            &lt;/li&gt;
            &lt;li&gt;
              &lt;div class="details"&gt;
                &lt;div class="title"&gt;Other&lt;/div&gt;
              &lt;/div&gt;
              &lt;div class="status pull-right"&gt;
                &lt;span class="animate-number" data-value="6" data-animation-duration="400"&gt;0&lt;/span&gt;%
              &lt;/div&gt;
              &lt;div class="clearfix"&gt;&lt;/div&gt;
              &lt;div class="progress progress-little no-radius"&gt;
                &lt;div class="progress-bar progress-bar-red animate-progress-bar" data-percentage="6%" style="width: 0%;"&gt;&lt;/div&gt;
              &lt;/div&gt;
            &lt;/li&gt;
          &lt;/ul&gt;
          // /progress bars

        &lt;/li&gt;
      &lt;/ul&gt;
    &lt;/div&gt;
    // /row

  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile

//****************************//
//*********** jquery *********//
//****************************//

//this settings you will find in charts.js file

$(function(){
  var d1 =[ [1, 715],
            [2, 985],
            [3, 1525],
            [4, 1254],
            [5, 1861],
            [6, 2621],
            [7, 1987],
            [8, 2136],
            [9, 2364],
            [10, 2851],
            [11, 1546],
            [12, 2541]
  ];
  var d2 =[ [1, 463],
            [2, 578],
            [3, 327],
            [4, 984],
            [5, 1268],
            [6, 1684],
            [7, 1425],
            [8, 1233],
            [9, 1354],
            [10, 1200],
            [11, 1260],
            [12, 1320]
  ];
  var months = ["January", "February", "March", "April", "May", "Juny", "July", "August", "September", "October", "November", "December"];

  // flot chart generate
  var plot = $.plotAnimator($("#statistics-chart"),
    [
      {
        label: 'Sales',
        data: d1,
        lines: {lineWidth:3},
        shadowSize:0,
        color: '#ffffff'
      },
      { label: "Visits",
        data: d2,
        animator: {steps: 99, duration: 1500, start:200, direction: "left"},
        lines: {
          fill: .3,
          lineWidth: 0
        },
        color:['#ffffff']
      },{
        label: 'Sales',
        data: d1,
        points: { show: true, fill: true, radius:6,fillColor:"#078e74",lineWidth:3 },
        color: '#fff',
        shadowSize:0
      },
      { label: "Visits",
        data: d2,
        points: { show: true, fill: true, radius:6,fillColor:"rgba(255,255,255,.5)",lineWidth:3 },
        color: '#fff',
        shadowSize:0
      }
    ],{

    xaxis: {

      tickLength: 0,
      tickDecimals: 0,
      min:1,
      ticks: [[1,"JAN"], [2, "FEB"], [3, "MAR"], [4, "APR"], [5, "MAY"], [6, "JUN"], [7, "JUL"], [8, "AUG"], [9, "SEP"], [10, "OCT"], [11, "NOV"], [12, "DEC"]],

      font :{
        lineHeight: 24,
        weight: "300",
        color: "#ffffff",
        size: 14
      }
    },

    yaxis: {
      ticks: 4,
      tickDecimals: 0,
      tickColor: "rgba(255,255,255,.3)",

      font :{
        lineHeight: 13,
        weight: "300",
        color: "#ffffff"
      }
    },

    grid: {
      borderWidth: {
        top: 0,
        right: 0,
        bottom: 1,
        left: 1
      },
      borderColor: 'rgba(255,255,255,.3)',
      margin:0,
      minBorderMargin:0,
      labelMargin:20,
      hoverable: true,
      clickable: true,
      mouseActiveRadius:6
    },

    legend: { show: false}
  });


  // tooltips showing
  $("#statistics-chart").bind("plothover", function (event, pos, item) {
    if (item) {
      var x = item.datapoint[0],
          y = item.datapoint[1];

      $("#tooltip").html('&lt;h1 style="color: #16a085"&gt;' + months[x - 1] + '&lt;/h1&gt;' + '&lt;strong&gt;' + y + '&lt;/strong&gt;' + ' ' + item.series.label)
        .css({top: item.pageY+5, left: item.pageX+5})
        .fadeIn(200);
    } else {
      $("#tooltip").hide();
    }
  });


  //tooltips options
  $("&lt;div id='tooltip'&gt;&lt;/div&gt;").css({
    position: "absolute",
    //display: "none",
    padding: "10px",
    "background-color": "#ffffff",
    "z-index":"99999"
  }).appendTo("body");

  //generate actual pie charts
  $('.pie-chart').easyPieChart();

  //animate progress bars
  $('.animate-progress-bar').css('width',  function(){ return ($(this).attr('data-percentage')+'%')});

})

</pre>
                                            <!-- /Source Code -->



                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->



                        </section>
                        <!-- /tile -->




                        <!-- tile -->
                        <section class="tile cornered">




                            <!-- tile header -->
                            <div class="tile-header">
                                <h1><strong>Projects</strong> Progress</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->


                            <!-- tile body -->
                            <div class="tile-body nopadding">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Graphic Layout for client</td>
                                            <td class="red-text little-bold uppercase">High priority</td>
                                            <td><span class="badge badge-red">50%</span></td>
                                            <td class="text-right"><span id="projectbar1">87,85,42,90,70,55,82,68</span></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Make website responsive</td>
                                            <td class="green-text little-bold uppercase">Low priority</td>
                                            <td><span class="badge badge-green">13%</span></td>
                                            <td class="text-right"><span id="projectbar2">87,99,52,93,42,86,51,93</span></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Clean css/html/js code</td>
                                            <td class="red-text little-bold uppercase">High priority</td>
                                            <td><span class="badge badge-red">76%</span></td>
                                            <td class="text-right"><span id="projectbar3">74,77,82,91,69,63,46,42</span></td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>Database Optimization</td>
                                            <td class="orange-text little-bold uppercase">Normal priority</td>
                                            <td><span class="badge badge-orange">38%</span></td>
                                            <td class="text-right"><span id="projectbar4">52,45,76,74,77,57,65,86</span></td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Database Migration</td>
                                            <td class="green-text little-bold uppercase">Low priority</td>
                                            <td><span class="badge badge-green">9%</span></td>
                                            <td class="text-right"><span id="projectbar5">53,70,47,96,62,49,69,55</span></td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Email server backup</td>
                                            <td class="orange-text little-bold uppercase">Normal priority</td>
                                            <td><span class="badge badge-orange">29%</span></td>
                                            <td class="text-right"><span id="projectbar6">69,80,85,96,67,58,75,82</span></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- /tile body -->


                            <!-- show code btn -->
                            <button class="btn show-code" data-toggle="modal" data-target="#codeModal08">
                                show code
                            </button>
                            <!-- /show code btn -->



                            <!-- Modal -->
                            <div class="modal fade" id="codeModal08" tabindex="-1" role="dialog" aria-labelledby="tileCode04" aria-hidden="true">
                                <div class="modal-dialog wide">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="tileCode04">Projects progress - Source Code</h4>
                                        </div>
                                        <div class="modal-body">


                                            <!-- Source Code -->
                                            <pre class="prettyprint linenums">
// tile
&lt;section class="tile cornered">

  // tile header
  &lt;div class="tile-header"&gt;
    &lt;h1&gt;&lt;strong&gt;Projects&lt;/strong&gt; Progress&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  // tile body
  &lt;div class="tile-body nopadding"&gt;
    &lt;table class="table table-hover"&gt;
      &lt;tbody&gt;
        &lt;tr&gt;
          &lt;td&gt;1&lt;/td&gt;
          &lt;td&gt;Graphic Layout for client&lt;/td&gt;
          &lt;td class="red-text little-bold uppercase"&gt;High priority&lt;/td&gt;
          &lt;td&gt;&lt;span class="badge badge-red"&gt;50%&lt;/span&gt;&lt;/td&gt;
          &lt;td class="text-right"&gt;&lt;span id="projectbar1"&gt;87,85,42,90,70,55,82,68&lt;/span&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;td&gt;2&lt;/td&gt;
          &lt;td&gt;Make website responsive&lt;/td&gt;
          &lt;td class="green-text little-bold uppercase"&gt;Low priority&lt;/td&gt;
          &lt;td&gt;&lt;span class="badge badge-green"&gt;13%&lt;/span&gt;&lt;/td&gt;
          &lt;td class="text-right"&gt;&lt;span id="projectbar2"&gt;87,99,52,93,42,86,51,93&lt;/span&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;td&gt;3&lt;/td&gt;
          &lt;td&gt;Clean css/html/js code&lt;/td&gt;
          &lt;td class="red-text little-bold uppercase"&gt;High priority&lt;/td&gt;
          &lt;td&gt;&lt;span class="badge badge-red"&gt;76%&lt;/span&gt;&lt;/td&gt;
          &lt;td class="text-right"&gt;&lt;span id="projectbar3"&gt;74,77,82,91,69,63,46,42&lt;/span&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;td&gt;4&lt;/td&gt;
          &lt;td&gt;Database Optimization&lt;/td&gt;
          &lt;td class="orange-text little-bold uppercase"&gt;Normal priority&lt;/td&gt;
          &lt;td&gt;&lt;span class="badge badge-orange"&gt;38%&lt;/span&gt;&lt;/td&gt;
          &lt;td class="text-right"&gt;&lt;span id="projectbar4"&gt;52,45,76,74,77,57,65,86&lt;/span&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;td&gt;5&lt;/td&gt;
          &lt;td&gt;Database Migration&lt;/td&gt;
          &lt;td class="green-text little-bold uppercase"&gt;Low priority&lt;/td&gt;
          &lt;td&gt;&lt;span class="badge badge-green"&gt;9%&lt;/span&gt;&lt;/td&gt;
          &lt;td class="text-right"&gt;&lt;span id="projectbar5"&gt;53,70,47,96,62,49,69,55&lt;/span&gt;&lt;/td&gt;
        &lt;/tr&gt;
        &lt;tr&gt;
          &lt;td&gt;6&lt;/td&gt;
          &lt;td&gt;Email server backup&lt;/td&gt;
          &lt;td class="orange-text little-bold uppercase"&gt;Normal priority&lt;/td&gt;
          &lt;td&gt;&lt;span class="badge badge-orange"&gt;29%&lt;/span&gt;&lt;/td&gt;
          &lt;td class="text-right"&gt;&lt;span id="projectbar6"&gt;69,80,85,96,67,58,75,82&lt;/span&gt;&lt;/td&gt;
        &lt;/tr&gt;
      &lt;/tbody&gt;
    &lt;/table&gt;
  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
//tile

//****************************//
//*********** jquery *********//
//****************************//

//sparkline charts
$('#projectbar1').sparkline('html', {type: 'bar', barColor: '#22beef', barWidth: 4, height: 20});
$('#projectbar2').sparkline('html', {type: 'bar', barColor: '#cd97eb', barWidth: 4, height: 20});
$('#projectbar3').sparkline('html', {type: 'bar', barColor: '#a2d200', barWidth: 4, height: 20});
$('#projectbar4').sparkline('html', {type: 'bar', barColor: '#ffc100', barWidth: 4, height: 20});
$('#projectbar5').sparkline('html', {type: 'bar', barColor: '#ff4a43', barWidth: 4, height: 20});
$('#projectbar6').sparkline('html', {type: 'bar', barColor: '#a2d200', barWidth: 4, height: 20});


</pre>
                                            <!-- /Source Code -->



                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->



                        </section>
                        <!-- /tile -->





                    </div>
                    <!-- /col 8-->




                    <!-- col 4 -->
                    <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">




                        <!-- tile -->
                        <section class="tile color grey">




                            <!-- tile header -->
                            <div class="tile-header">
                                <h1 class="big-thin">Server Load</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->

                            <!-- tile widget -->
                            <div class="tile-widget">
                                <h2><span class="animate-number" data-value="394" data-animation-duration="1600">0</span> GB</h2>
                                <div class="progress progress-little no-radius nomargin">
                                    <div class="progress-bar progress-bar-dutch animate-progress-bar" data-percentage="39%" style="width: 0%;"></div>
                                </div>
                                <p class="description"><strong class="white-text">394GB</strong> used of <strong class="white-text">2,048GB</strong> on File Server</p>
                            </div>
                            <!-- /tile widget -->


                            <!-- tile body -->
                            <div class="tile-body paddingtop">
                                <div id="serverload-chart"></div>
                            </div>
                            <!-- /tile body -->


                            <!-- show code btn -->
                            <button class="btn show-code" data-toggle="modal" data-target="#codeModal06">
                                show code
                            </button>
                            <!-- /show code btn -->


                            <!-- Modal -->
                            <div class="modal fade" id="codeModal06" tabindex="-1" role="dialog" aria-labelledby="tileCode02" aria-hidden="true">
                                <div class="modal-dialog wide">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="tileCode02">Server load tile - Source Code</h4>
                                        </div>
                                        <div class="modal-body">


                                            <!-- Source Code -->

                                            <pre class="prettyprint linenums">
//tile
&lt;section class="tile color grey"&gt;

  //tile header
  &lt;div class="tile-header"&gt;
    &lt;h1 class="big-thin"&gt;Server Load&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  // tile widget
  &lt;div class="tile-widget"&gt;
    &lt;h2&gt;&lt;span class="animate-number" data-value="394" data-animation-duration="1600"&gt;0&lt;/span&gt; GB&lt;/h2&gt;
    &lt;div class="progress progress-little no-radius nomargin"&gt;
      &lt;div class="progress-bar progress-bar-dutch animate-progress-bar" data-percentage="39%" style="width: 0%;"&gt;&lt;/div&gt;
    &lt;/div&gt;
    &lt;p class="description"&gt;&lt;strong class="white-text"&gt;394GB&lt;/strong&gt; used of &lt;strong class="white-text"&gt;2,048GB&lt;/strong&gt; on File Server&lt;/p&gt;
  &lt;/div&gt;
  // /tile widget


  //tile body
  &lt;div class="tile-body paddingtop"&gt;
    //generate chart here
    &lt;div id="serverload-chart"&gt;&lt;/div&gt;
  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile

//****************************//
//*********** jquery *********//
//****************************//

//server load rickshaw chart
var graph;

var seriesData = [ [], []];
var random = new Rickshaw.Fixtures.RandomData(50);

for (var i = 0; i &lt; 50; i++) {
  random.addData(seriesData);
}

graph = new Rickshaw.Graph( {
  element: document.querySelector("#serverload-chart"),
  height: 150,
  renderer: 'area',
  series: [
    {
      data: seriesData[0],
      color: '#1693A5',
      name:'File Server'
    },{
      data: seriesData[1],
      color: '#e2e2e2',
      name:'Mail Server'
    }
  ]
} );

var hoverDetail = new Rickshaw.Graph.HoverDetail( {
  graph: graph,
});

setInterval( function() {
  random.removeData(seriesData);
  random.addData(seriesData);
  graph.update();

},1000);

//animate numbers with class .animate-number with data-value attribute
$(".animate-number").each(function() {
  var value = $(this).data('value');
  var duration = $(this).data('animation-duration');

  $(this).animateNumbers(value, true, duration, "linear");
});

//animate progress bars
$('.animate-progress-bar').each(function(){
  var progress =  $(this).data('percentage');

  $(this).css('width', progress);
})

</pre>
                                            <!-- /Source Code -->



                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->



                        </section>
                        <!-- /tile -->

                        <!-- tile -->
                        <section class="tile cornered">



                            <!-- tile header -->
                            <div class="tile-header">
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->

                            <!-- tile body -->
                            <div class="tile-body">
                                <div id="morris-donut-example" style="height: 250px;"></div>
                            </div>
                            <!-- /tile body -->

                            <!-- show code btn -->
                            <button class="btn show-code" data-toggle="modal" data-target="#codeModal12">
                                show code
                            </button>
                            <!-- /show code btn -->


                            <!-- Modal -->
                            <div class="modal fade" id="codeModal12" tabindex="-1" role="dialog" aria-labelledby="tileCode08" aria-hidden="true">
                                <div class="modal-dialog wide">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="tileCode08">Morris Donut tile - Source Code</h4>
                                        </div>
                                        <div class="modal-body">


                                            <!-- Source Code -->

                                            <pre class="prettyprint linenums">
//tile
&lt;section class="tile cornered"&gt;

  //tile header
  &lt;div class="tile-header"&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  //tile body
  &lt;div class="tile-body"&gt;
    &lt;div id="morris-donut-example" style="height: 250px;"&gt;&lt;/div&gt;
  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile

//****************************//
//*********** jquery *********//
//****************************//

// Morris donut chart
Morris.Donut({
  element: 'morris-donut-example',
  data: [
    {label: "Download Sales", value: 12},
    {label: "In-Store Sales", value: 30},
    {label: "Mail-Order Sales", value: 20}
  ],
  colors: ['#00a3d8', '#2fbbe8', '#72cae7']
});

</pre>
                                            <!-- /Source Code -->



                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->



                        </section>
                        <!-- /tile -->




                        <!-- tile -->
                        <section class="tile cornered">




                            <!-- tile header -->
                            <div class="tile-header color red text-center">
                                <button class="btn pull-left btn-black-transparent" type="button"><i class="fa fa-caret-square-o-down"></i></button>
                                <h1 class="small-uppercase">TODO's</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->

                            <!-- tile body -->
                            <div class="tile-body">
                                <input type="text" placeholder="Type new todo..." class="grey-bg w100p margin-vertical-15">
                                <ul class="nolisttypes" id="todolist">
                                    <li>
                                        <div class="checkbox check-cyan">
                                            <input type="checkbox" value="1" id="todo-01">
                                            <label for="todo-01">Make a backup</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox check-cyan">
                                            <input type="checkbox" checked="checked" value="1" id="todo-02">
                                            <label for="todo-02" class="done">Send e-mail to Ici</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox check-cyan">
                                            <input type="checkbox" value="1" id="todo-03">
                                            <label for="todo-03">Buy tickets</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox check-cyan">
                                            <input type="checkbox" value="1" id="todo-04">
                                            <label for="todo-04">Resolve issues</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox check-cyan">
                                            <input type="checkbox" value="1" id="todo-05">
                                            <label for="todo-05">Compile new version</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox check-cyan">
                                            <input type="checkbox" value="1" id="todo-06">
                                            <label for="todo-06">Upload new version</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- /tile body -->

                            <!-- show code btn -->
                            <button class="btn show-code" data-toggle="modal" data-target="#codeModal09">
                                show code
                            </button>
                            <!-- /show code btn -->


                            <!-- Modal -->
                            <div class="modal fade" id="codeModal09" tabindex="-1" role="dialog" aria-labelledby="tileCode05" aria-hidden="true">
                                <div class="modal-dialog wide">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="tileCode05">TODO tile - Source Code</h4>
                                        </div>
                                        <div class="modal-body">


                                            <!-- Source Code -->

                                            <pre class="prettyprint linenums">
//tile
&lt;section class="tile"&gt;

  //tile header
  &lt;div class="tile-header color red text-center"&gt;
    &lt;button class="btn pull-left btn-black-transparent" type="button"&gt;&lt;i class="fa fa-caret-square-o-down"&gt;&lt;/i&gt;&lt;/button&gt;
    &lt;h1 class="small-uppercase"&gt;TODOs&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  //tile body
  &lt;div class="tile-body"&gt;
    &lt;input type="text" placeholder="Type new todo..." class="grey-bg w100p margin-vertical-15"&gt;
    &lt;ul class="nolisttypes" id="todolist"&gt;
      &lt;li&gt;
        &lt;div class="checkbox check-cyan"&gt;
          &lt;input type="checkbox" value="1" id="todo-01"&gt;
          &lt;label for="todo-01"&gt;Make a backup&lt;/label&gt;
        &lt;/div&gt;
      &lt;/li&gt;
      &lt;li&gt;
        &lt;div class="checkbox check-cyan"&gt;
          &lt;input type="checkbox" checked="checked" value="1" id="todo-02"&gt;
          &lt;label for="todo-02" class="done"&gt;Send e-mail to Ici&lt;/label&gt;
        &lt;/div&gt;
      &lt;/li&gt;
      &lt;li&gt;
        &lt;div class="checkbox check-cyan"&gt;
          &lt;input type="checkbox" value="1" id="todo-03"&gt;
          &lt;label for="todo-03"&gt;Buy tickets&lt;/label&gt;
        &lt;/div&gt;
      &lt;/li&gt;
    &lt;/ul&gt;
  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile

//****************************//
//*********** jquery *********//
//****************************//

//todo's
$('#todolist li label').click(function() {
  $(this).toggleClass('done');
});

</pre>
                                            <!-- /Source Code -->



                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->



                        </section>
                        <!-- /tile -->




                    </div>
                    <!-- /col 4 -->




                </div>
                <!-- /row -->





                <!-- row -->
                <div class="row">




                    <!-- col 6 -->
                    <div class="col-md-6">


                        <!-- tile -->
                        <section class="tile">




                            <!-- tile header -->
                            <div class="tile-header transparent">
                                <h1><strong>Recent</strong> Activity</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->



                            <!-- tile widget -->
                            <div class="tile-widget nopadding">
                                <!-- Nav tabs -->
                                <ul class="nav nav-tabs tabdrop">
                                    <li class="active"><a href="#users-tab" data-toggle="tab"><i class="fa fa-users"></i></a></li>
                                    <li><a href="#orders-tab" data-toggle="tab"><i class="fa fa-shopping-cart"></i></a></li>
                                    <li><a href="#messages-tab" data-toggle="tab"><i class="fa fa-envelope"></i></a></li>
                                    <li><a href="#tasks-tab" data-toggle="tab"><i class="fa fa-tasks"></i></a></li>
                                    <li><a href="#comments-tab" data-toggle="tab"><i class="fa fa-comments"></i></a></li>
                                </ul>
                                <!-- / Nav tabs -->
                            </div>
                            <!-- /tile widget -->




                            <!-- tile body -->
                            <div class="tile-body tab-content nopadding">
                                <!-- Tab panes -->

                                <ul id="users-tab" class="tab-pane fade in active">
                                    <li>
                                        <span class="date">08.01.2014</span>
                                        <span class="icon"><i class="fa fa-user fa-lg amethyst-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Peter Kay</a> ubanned</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">08.01.2014</span>
                                        <span class="icon"><i class="fa fa-user fa-lg amethyst-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Arnold Karlsberg</a> ubanned</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">06.01.2014</span>
                                        <span class="icon"><i class="fa fa-user fa-lg red-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Arnold Karlsberg</a> banned</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">04.01.2014</span>
                                        <span class="icon"><i class="fa fa-user fa-lg cyan-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Ing. Imrich Kamarel</a> has been updated</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">03.01.2014</span>
                                        <span class="icon"><i class="fa fa-user fa-lg red-text"></i></span>
                                        <span class="subject">New User <a href="#" class="maincolor">Arnold Karlsberg</a> registered</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">30.12.2013</span>
                                        <span class="icon"><i class="fa fa-user fa-lg red-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Peter Kay</a> banned</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">27.12.2013</span>
                                        <span class="icon"><i class="fa fa-user fa-lg green-text"></i></span>
                                        <span class="subject">New user <a href="#" class="maincolor">Peter Kay</a> registered</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">26.12.2013</span>
                                        <span class="icon"><i class="fa fa-user fa-lg red-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">George McCain</a> banned</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">22.12.2013</span>
                                        <span class="icon"><i class="fa fa-user fa-lg green-text"></i></span>
                                        <span class="subject">New user <a href="#" class="maincolor">Ing. Imrich Kamarel</a> registered</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                </ul>

                                <ul id="orders-tab" class="tab-pane fade">
                                    <li>
                                        <span class="date">01.01.2014</span>
                                        <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Arnold Karlsberg</a> make a new order for 116$ (<a href="#" class="maincolor">OR_00012014</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">23.12.2013</span>
                                        <span class="icon"><i class="fa fa-shopping-cart fa-lg cyan-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">George McCain</a> change an order for 24$ (<a href="#" class="maincolor">OR_02172013</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">23.12.2013</span>
                                        <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">George McCain</a> make a new order for 24$ (<a href="#" class="maincolor">OR_02172013</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">19.12.2013</span>
                                        <span class="icon"><i class="fa fa-shopping-cart fa-lg red-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Peter Kay</a> cancelled order for 312$ (<a href="#" class="maincolor">OR_02162013</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">18.12.2013</span>
                                        <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Peter Kay</a> make a new order for 312$ (<a href="#" class="maincolor">OR_02162013</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">14.12.2013</span>
                                        <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Ing. Imrich Kamarel</a> make a new order for 154$ (<a href="#" class="maincolor">OR_02152013</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">11.12.2013</span>
                                        <span class="icon"><i class="fa fa-shopping-cart fa-lg green-text"></i></span>
                                        <span class="subject">User <a href="#" class="maincolor">Ing. Imrich Kamarel</a> make a new order for 65$ (<a href="#" class="maincolor">OR_02142013</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                </ul>

                                <ul id="messages-tab" class="tab-pane fade">
                                    <li>
                                        <span class="date">06.01.2014</span>
                                        <span class="icon"><i class="fa fa-envelope fa-lg"></i></span>
                                        <span class="subject">You have a new message from <a href="#" class="maincolor">Peter Kay</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">01.01.2013</span>
                                        <span class="icon"><i class="fa fa-envelope fa-lg"></i></span>
                                        <span class="subject">You have a new message from <a href="#" class="maincolor">Peter Kay</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">29.12.2013</span>
                                        <span class="icon"><i class="fa fa-envelope fa-lg"></i></span>
                                        <span class="subject">You have a new message from <a href="#" class="maincolor">Ing. Imrich Kamarel</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">29.12.2013</span>
                                        <span class="icon"><i class="fa fa-envelope fa-lg"></i></span>
                                        <span class="subject">You have a new message from <a href="#" class="maincolor">Arnold Karlsberg</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">28.12.2013</span>
                                        <span class="icon"><i class="fa fa-envelope fa-lg"></i></span>
                                        <span class="subject">You have a new message from <a href="#" class="maincolor">George McCain</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">26.12.2013</span>
                                        <span class="icon"><i class="fa fa-envelope fa-lg"></i></span>
                                        <span class="subject">You have a new message from <a href="#" class="maincolor">Ing. Imrich Kamarel</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">26.12.2013</span>
                                        <span class="icon"><i class="fa fa-envelope fa-lg"></i></span>
                                        <span class="subject">You have a new message from <a href="#" class="maincolor">Ing. Imrich Kamarel</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                </ul>

                                <ul id="tasks-tab" class="tab-pane fade">
                                    <li>
                                        <span class="date">24.12.2013</span>
                                        <span class="icon"><i class="fa fa-tasks cyan-text fa-lg"></i></span>
                                        <span class="subject">You finished task <a href="#" class="maincolor">Get drunk</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">23.12.2013</span>
                                        <span class="icon"><i class="fa fa-tasks red-text fa-lg"></i></span>
                                        <span class="subject">You cancelled task <a href="#" class="maincolor">Gifts!</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">22.12.2013</span>
                                        <span class="icon"><i class="fa fa-tasks cyan-text fa-lg"></i></span>
                                        <span class="subject">You finished task <a href="#" class="maincolor">Make backup</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">21.12.2013</span>
                                        <span class="icon"><i class="fa fa-tasks green-text fa-lg"></i></span>
                                        <span class="subject">You have a new task <a href="#" class="maincolor">Gifts!</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">19.12.2013</span>
                                        <span class="icon"><i class="fa fa-tasks cyan-text fa-lg"></i></span>
                                        <span class="subject">You finished task <a href="#" class="maincolor">Send emails</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">18.12.2013</span>
                                        <span class="icon"><i class="fa fa-tasks green-text fa-lg"></i></span>
                                        <span class="subject">You have a new task <a href="#" class="maincolor">Send emails</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">18.12.2013</span>
                                        <span class="icon"><i class="fa fa-tasks green-text fa-lg"></i></span>
                                        <span class="subject">You have a new task <a href="#" class="maincolor">Make backup</a></span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                </ul>

                                <ul id="comments-tab" class="tab-pane fade">
                                    <li>
                                        <span class="date">06.01.2014</span>
                                        <span class="icon"><i class="fa fa-comments red-text fa-lg"></i></span>
                                        <span class="subject"><a href="#" class="maincolor">Arnold Karlsberg</a> deleted comment (<a href="#" class="maincolor">CM_00019</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">28.12.2013</span>
                                        <span class="icon"><i class="fa fa-comments green-text fa-lg"></i></span>
                                        <span class="subject"><a href="#" class="maincolor">Arnold Karlsberg</a> posted a new comment (<a href="#" class="maincolor">CM_00019</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">21.12.2013</span>
                                        <span class="icon"><i class="fa fa-comments green-text fa-lg"></i></span>
                                        <span class="subject"><a href="#" class="maincolor">John Douey</a> posted a new comment (<a href="#" class="maincolor">CM_00018</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">20.12.2013</span>
                                        <span class="icon"><i class="fa fa-comments green-text fa-lg"></i></span>
                                        <span class="subject"><a href="#" class="maincolor">Peter Kay</a> posted a new comment (<a href="#" class="maincolor">CM_00017</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">20.12.2013</span>
                                        <span class="icon"><i class="fa fa-comments cyan-text fa-lg"></i></span>
                                        <span class="subject"><a href="#" class="maincolor">Ing. Imrich Kamarel</a> updated comment (<a href="#" class="maincolor">CM_00016</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">18.12.2013</span>
                                        <span class="icon"><i class="fa fa-comments green-text fa-lg"></i></span>
                                        <span class="subject"><a href="#" class="maincolor">Ing. Imrich Kamarel</a> posted a new comment (<a href="#" class="maincolor">CM_00016</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                    <li>
                                        <span class="date">17.12.2013</span>
                                        <span class="icon"><i class="fa fa-comments green-text fa-lg"></i></span>
                                        <span class="subject"><a href="#" class="maincolor">John Douey</a> posted a new comment (<a href="#" class="maincolor">CM_00015</a>)</span>
                                        <span class="more pull-right"><i class="fa fa-caret-right"></i></span>
                                    </li>
                                </ul>

                                <!-- / Tab panes -->
                            </div>
                            <!-- /tile body -->




                            <!-- show code btn -->
                            <button class="btn show-code" data-toggle="modal" data-target="#codeModal10">
                                show code
                            </button>
                            <!-- /show code btn -->



                            <!-- Modal -->
                            <div class="modal fade" id="codeModal10" tabindex="-1" role="dialog" aria-labelledby="tileCode06" aria-hidden="true">
                                <div class="modal-dialog wide">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="tileCode06">Recent Activity tile - Source Code</h4>
                                        </div>
                                        <div class="modal-body">


                                            <!-- Source Code -->

                                            <pre class="prettyprint linenums">
//tile
&lt;section class="tile"&gt;

  //tile header
  &lt;div class="tile-header transparent"&gt;
    &lt;h1&gt;&lt;strong&gt;Recent&lt;/strong&gt; Activity&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  // tile widget
    &lt;div class="tile-widget nopadding"&gt;
      // Nav tabs
      &lt;ul class="nav nav-tabs tabdrop"&gt;
        &lt;li class="active"&gt;&lt;a href="#users-tab" data-toggle="tab" data-toggle="tab"&gt;&lt;i class="fa fa-users"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="#orders-tab" data-toggle="tab"&gt;&lt;i class="fa fa-shopping-cart"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="#messages-tab" data-toggle="tab"&gt;&lt;i class="fa fa-envelope"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="#tasks-tab" data-toggle="tab"&gt;&lt;i class="fa fa-tasks"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;
        &lt;li&gt;&lt;a href="#comments-tab" data-toggle="tab"&gt;&lt;i class="fa fa-comments"&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;
      &lt;/ul&gt;
      // / Nav tabs
    &lt;/div&gt;
    // /tile widget

  //tile body
  &lt;div class="tile-body tab-content nopadding"&gt;

    // Tab panes
    &lt;ul id="users-tab" class="tab-pane fade in active"&gt;
      &lt;li&gt;
        &lt;span class="date"&gt;06.01.2014&lt;/span&gt;
        &lt;span class="icon"&gt;&lt;i class="fa fa-user fa-lg red-text"&gt;&lt;/i&gt;&lt;/span&gt;
        &lt;span class="subject"&gt;User &lt;a href="#"&gt;Arnold Karlsberg&lt;/a&gt; banned&lt;/span&gt;
        &lt;span class="more pull-right"&gt;&lt;i class="fa fa-caret-right"&gt;&lt;/i&gt;&lt;/span&gt;
      &lt;/li&gt;
      &lt;li&gt;
        ...
      &lt;/li&gt;
    &lt;/ul&gt;

    &lt;ul id="orders-tab" class="tab-pane fade"&gt;
      ...
    &lt;/ul&gt;

    ...
    // / Tab pane

  &lt;/div&gt;
  // /tile body

&lt;/section&gt;
// /tile

//****************************//
//*********** jquery *********//
//****************************//

//  Initialize tabDrop
$('.tabdrop').tabdrop({text: '&lt;i class="fa fa-th-list"&gt;&lt;/i&gt;'})

</pre>
                                            <!-- /Source Code -->



                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->



                        </section>
                        <!-- /tile -->


                    </div>
                    <!-- /col 6 -->




                    <!-- col 6 -->
                    <div class="col-md-6">


                        <!-- tile -->
                        <section class="tile">




                            <!-- tile header -->
                            <div class="tile-header transparent">
                                <h1><strong>Quick</strong> Message</h1>
                                <div class="controls">
                                    <a href="#" class="refresh"><i class="fa fa-refresh"></i></a>
                                    <a href="#" class="remove"><i class="fa fa-times"></i></a>
                                </div>
                            </div>
                            <!-- /tile header -->



                            <!-- tile widget -->
                            <div class="tile-widget color greensea">
                                <form class="form-horizontal" role="form">
                                    <div class="form-group">
                                        <label for="message-to" class="col-sm-2 control-label">Recipients</label>
                                        <div class="col-sm-10">
                                            <select data-placeholder="Select recipients..." multiple="" tabindex="3" class="chosen-select form-control chosen-transparent" id="message-to">
                                                <option value="ici@gmail.com">ici@gmail.com</option>
                                                <option value="johny@gmail.com">johny@gmail.com</option>
                                                <option value="arnie@gmail.com">arnie@gmail.com</option>
                                                <option value="pete@gmail.com">pete@gmail.com</option>
                                                <option value="gorge@gmail.com">gorge@gmail.com</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group no-bottom-margin">
                                        <label for="subject" class="col-sm-2 control-label">Subject</label>
                                        <div class="col-sm-10">
                                            <input type="text" class="form-control transparent" id="subject" placeholder="Type subject here...">
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <!-- /tile widget -->



                            <!-- tile body -->
                            <div class="tile-body nopadding">
                                <div id="quick-message-content"></div>
                            </div>
                            <!-- /tile body -->


                            <!-- tile footer -->
                            <div class="tile-footer">
                                <button type="submit" class="btn btn-greensea">Send message</button>
                            </div>
                            <!-- /tile footer -->


                            <!-- show code btn -->
                            <button class="btn show-code" data-toggle="modal" data-target="#codeModal11">
                                show code
                            </button>
                            <!-- /show code btn -->



                            <!-- Modal -->
                            <div class="modal fade" id="codeModal11" tabindex="-1" role="dialog" aria-labelledby="tileCode07" aria-hidden="true">
                                <div class="modal-dialog wide">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="tileCode07">Quick Message tile - Source Code</h4>
                                        </div>
                                        <div class="modal-body">


                                            <!-- Source Code -->

                                            <pre class="prettyprint linenums">
//tile
&lt;section class="tile"&gt;

  //tile header
  &lt;div class="tile-header transparent"&gt;
    &lt;h1&gt;&lt;strong&gt;Quick&lt;/strong&gt; Message&lt;/h1&gt;
    &lt;div class="controls"&gt;
      &lt;a href="#" class="refresh"&gt;&lt;i class="fa fa-refresh"&gt;&lt;/i&gt;&lt;/a&gt;
      &lt;a href="#" class="remove"&gt;&lt;i class="fa fa-times"&gt;&lt;/i&gt;&lt;/a&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  // /tile header

  // tile widget
  &lt;div class="tile-widget color greensea"&gt;
    &lt;form class="form-horizontal" role="form"&gt;
      &lt;div class="form-group"&gt;
        &lt;label for="message-to" class="col-sm-2 control-label"&gt;Recipients&lt;/label&gt;
        &lt;div class="col-sm-10"&gt;
          &lt;select data-placeholder="Select recipients..." multiple="" tabindex="3" class="chosen-select form-control chosen-transparent" id="message-to"&gt;
            &lt;option value=""&gt;&lt;/option&gt;
            &lt;option value="ici@gmail.com"&gt;ici@gmail.com&lt;/option&gt;
            &lt;option value="johny@gmail.com"&gt;johny@gmail.com&lt;/option&gt;
            &lt;option value="arnie@gmail.com"&gt;arnie@gmail.com&lt;/option&gt;
            &lt;option value="pete@gmail.com"&gt;pete@gmail.com&lt;/option&gt;
            &lt;option value="gorge@gmail.com"&gt;gorge@gmail.com&lt;/option&gt;
          &lt;/select&gt;
        &lt;/div&gt;
      &lt;/div&gt;
      &lt;div class="form-group no-bottom-margin"&gt;
        &lt;label for="subject" class="col-sm-2 control-label"&gt;Subject&lt;/label&gt;
        &lt;div class="col-sm-10"&gt;
          &lt;input type="text" class="form-control transparent" id="subject" placeholder="Type subject here..."&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;/form&gt;
  &lt;/div&gt;
  // /tile widget

  //tile body
  &lt;div class="tile-body nopadding"&gt;
    &lt;div id="quick-message-content"&gt;&lt;/div&gt;
  &lt;/div&gt;
  // /tile body

  //tile footer
  &lt;div class="tile-footer"&gt;
    &lt;button type="submit" class="btn btn-greensea"&gt;Send message&lt;/button&gt;
  &lt;/div&gt;
  // /tile footer

&lt;/section&gt;
// /tile

//****************************//
//*********** jquery *********//
//****************************//

//load wysiwyg editor
$('#quick-message-content').summernote({
  height: 158   //set editable area's height
});

//multiselect input
$(".chosen-select").chosen({disable_search_threshold: 10});
</pre>
                                            <!-- /Source Code -->



                                        </div>
                                    </div><!-- /.modal-content -->
                                </div><!-- /.modal-dialog -->
                            </div><!-- /.modal -->



                        </section>
                        <!-- /tile -->


                    </div>
                    <!-- /col 6 -->




                </div>
                <!-- /row -->



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

<script src="js/charts.js"></script>
<script src="js/minoral.js"></script>

<script>
    $(function(){

        // Initialize card flip
        $('.card.hover').hover(function(){
            $(this).addClass('flip');
        },function(){
            $(this).removeClass('flip');
        });

        // Make card front & back side same

        $('.card').each(function() {
            var front = $('.card .front');
            var back = $('.card .back');
            var frontH = front.height();
            var backH = back.height();



            if (backH > frontH) {
                front.height(backH - 8);
            }
        });

        // Initialize tabDrop
        $('.tabdrop').tabdrop({text: '<i class="fa fa-th-list"></i>'});

        //generate pie charts
        $('.easypiechart').easyPieChart();

        //generate actual pie charts
        $('.pie-chart').easyPieChart();

        //animate numbers on cards
        $("#users-count").animateNumbers(Math.round( Math.random() * 1000 ));
        $("#orders-count").animateNumbers(Math.round( Math.random() * 100 ));
        $("#sales-count").animateNumbers(Math.round( Math.random() * 10000 ));
        $("#visits-count").animateNumbers(Math.round( Math.random() * 10000 ));

        //animate numbers with class .animate-number with data-value attribute
        $(".animate-number").each(function() {
            var value = $(this).data('value');
            var duration = $(this).data('animation-duration');

            $(this).animateNumbers(value, true, duration, "linear");
        });

        //animate progress bars
        $('.animate-progress-bar').each(function(){
            var progress =  $(this).data('percentage');

            $(this).css('width', progress);
        })

        //update instance every 5 sec
        window.setInterval(function() {

            //animate numbers on cards
            $( '#users-count' ).animateNumbers( Math.round( Math.random() * 1000 ) );
            $( '#orders-count' ).animateNumbers( Math.round( Math.random() * 100 ) );
            $( '#sales-count' ).animateNumbers( Math.round( Math.random() * 10000 ) );
            $( '#visits-count' ).animateNumbers( Math.round( Math.random() * 10000 ) );

            //refresh every pie chart
            $('.easypiechart').each(function() {
                $(this).data('easyPieChart').update(Math.floor(100*Math.random()));
            });

        }, 5000);

        //server load rickshaw chart
        var graph;

        var seriesData = [ [], []];
        var random = new Rickshaw.Fixtures.RandomData(50);

        for (var i = 0; i < 50; i++) {
            random.addData(seriesData);
        }

        graph = new Rickshaw.Graph( {
            element: document.querySelector("#serverload-chart"),
            height: 150,
            renderer: 'area',
            series: [
                {
                    data: seriesData[0],
                    color: '#1693A5',
                    name:'File Server'
                },{
                    data: seriesData[1],
                    color: '#e2e2e2',
                    name:'Mail Server'
                }
            ]
        } );

        var hoverDetail = new Rickshaw.Graph.HoverDetail( {
            graph: graph,
        });

        setInterval( function() {
            random.removeData(seriesData);
            random.addData(seriesData);
            graph.update();

        },1000);

        //sparkline charts
        $('#projectbar1').sparkline('html', {type: 'bar', barColor: '#22beef', barWidth: 4, height: 20});
        $('#projectbar2').sparkline('html', {type: 'bar', barColor: '#cd97eb', barWidth: 4, height: 20});
        $('#projectbar3').sparkline('html', {type: 'bar', barColor: '#a2d200', barWidth: 4, height: 20});
        $('#projectbar4').sparkline('html', {type: 'bar', barColor: '#ffc100', barWidth: 4, height: 20});
        $('#projectbar5').sparkline('html', {type: 'bar', barColor: '#ff4a43', barWidth: 4, height: 20});
        $('#projectbar6').sparkline('html', {type: 'bar', barColor: '#a2d200', barWidth: 4, height: 20});

        //todo's
        $('#todolist li label').click(function() {
            $(this).toggleClass('done');
        });

        //load wysiwyg editor
        $('#quick-message-content').summernote({
            height: 158   //set editable area's height
        });

        //multiselect input
        $(".chosen-select").chosen({disable_search_threshold: 10});

        // Morris donut chart
        Morris.Donut({
            element: 'morris-donut-example',
            data: [
                {label: "Download Sales", value: 12},
                {label: "In-Store Sales", value: 30},
                {label: "Mail-Order Sales", value: 20}
            ],
            colors: ['#00a3d8', '#2fbbe8', '#72cae7']
        });

    })

</script>
</body>
</html>