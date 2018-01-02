<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/12/31
  Time: 20:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Minoral 1.3 - Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/bootstrap-checkbox.css">

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






        <!-- Page content -->
        <div id="content" class="col-md-12 full-page login">


            <div class="welcome">
                <img src="images/logo-big.png" alt class="logo">
                <h1><strong>Welcome</strong> UPMS</h1>
                <h5>Minoral Admin for Corporation v. 0.1</h5>

                <form id="form-signin" class="form-signin" action="/login.html" method="post">
                    <section>
                        <div class="input-group">
                            <input type="text" class="form-control" name="mobile" id="mobile" placeholder="Mobile">
                            <div class="input-group-addon"><i class="fa fa-user"></i></div>
                        </div>
                        <div class="input-group">
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password">
                            <div class="input-group-addon"><i class="fa fa-key"></i></div>
                        </div>
                        <div align="20px">${message}</div>
                    </section>
                    <section class="controls">
                        <div class="checkbox check-transparent">
                            <input type="checkbox" value="1" id="remember" checked>
                            <label for="remember">Remember me</label>
                        </div>
                        <a href="#" class="pull-right">Forget password?</a>
                    </section>
                    <section class="new-acc">
                        <button class="btn btn-greensea" onclick="administratorLogin()">Login</button>
                        <button class="btn btn-greensea" onclick="registerPage()">Create an account</button>
                    </section>
                </form>
            </div>



            <a href="#" class="log-in" readonly="readonly">Welcome<i class="fa fa-arrow-right fa-5x"></i></a>



        </div>
        <!-- Page content end -->






    </div>
    <!-- Make page fluid-->




</div>
<!-- Wrap all page content end -->
<script type="text/javascript">
    function administratorLogin() {
        if ("" ==mobile.value || "" == password.value){
            alert("用户名或密码为空！");
            document.forms[0].action="/login.html";
        }
        else {
            document.forms[0].action="/login.html?method=login";
            document.forms[0].submit();
        }
    }

    function registerPage() {
        document.forms[0].action="/register.html"
    }
</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
<!--<script src="https://google-code-prettify.googlecode.com/svn/loader/run_prettify.js?lang=css&amp;skin=sons-of-obsidian"></script>-->
<script src="js/plugins/jquery.nicescroll.min.js"></script>
<script src="js/plugins/blockui/jquery.blockUI.js"></script>


<script src="js/minoral.min.js"></script>

<script>
    $(function(){

        $('.welcome').addClass('animated bounceIn');

    })

</script>
</body>
</html>