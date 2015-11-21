<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<div class="container myback">

    <%--<div class="row">--%>
        <%--<div class="col-lg-15">--%>
            <%--<h1 class="page-header"><i>ShinimaCoffee</i></h1>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="row">--%>
        <%@ include file="my-side-bar.jsp" %>
        <%--<div class="col-md-2 sidebar">--%>
            <%--<ul class="nav nav-sidebar">--%>
                <%--<li><a href="/" class="">Main page</a></li>--%>
                <%--<li><a href="registration" class="">Registration</a></li>--%>
                <%--<li><a href="profile" class="">Profile</a></li>--%>
                <%--<li><a href="filling" class="">Admin</a></li>--%>
                <%--<hr/>--%>
                <%--<li><a href="mainlogin" class="list-group-item-warning">Login</a></li>--%>
                <%--<li><a href="logout" class="">Logout</a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Sign In</h3>
                </div>
                <div class="panel-body">
                    <form action="j_security_check" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label">Login</label>

                            <div class="col-lg-8 has-warning">
                                <input name="j_username" type="text" class="form-control"
                                       placeholder="Login">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-3 control-label">Password</label>

                            <div class="col-lg-8 has-warning">
                                <input name="j_password" type="password" class="form-control"
                                        placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <button type="submit" class="btn btn-warning">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>