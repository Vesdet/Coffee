<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 17.11.2015
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
</head>
<body>

<div class="container myback">

    <div class="row">
        <div class="col-lg-15">
            <h1 class="page-header"><i>ShinimaCoffee</i></h1>
        </div>
    </div>

    <div class="row">
        <div class="col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="/" class="">Main page</a></li>
                <li><a href="/registration" class="list-group-item-warning">Registration</a></li>
                <li><a href="/buy" class="">Buy</a></li>
                <li><a href="/filling" class="">Admin</a></li>
            </ul>
        </div>
        <%--col-lg-offset-1--%>
        <div class="col-lg-5">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Registration</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" action="/registration" method="post">
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Name</label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="regName" placeholder="Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Login</label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="regLogin" placeholder="Login">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label">Password</label>

                            <div class="col-lg-8 has-warning">
                                <input type="password" class="form-control" name="regPassword" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-2">
                                <button type="submit" class="btn btn-warning">Submit</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <a href="logout" class="btn btn-warning">Logout</a>

    </div>
</div>
</body>
</html>
