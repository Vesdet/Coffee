<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link href="../css/bootstrap.css" rel="stylesheet">
    <link href="../css/style.css" rel="stylesheet">
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
                <li><a href="/login" class="list-group-item-warning">Login</a></li>
                <li><a href="/buy" class="">Buy</a></li>
            </ul>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Sign In</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="inputLogin" class="col-lg-3 control-label">Login</label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" id="inputLogin" placeholder="Login">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword" class="col-lg-3 control-label">Password</label>

                            <div class="col-lg-8 has-warning">
                                <input type="password" class="form-control" id="inputPassword" placeholder="Password">
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
        <div class="col-lg-5 col-lg-offset-1">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Registration</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal">
                        <div class="form-group">
                            <label for="regEmail" class="col-lg-2 control-label">Name</label>

                            <div class="col-lg-10 has-warning">
                                <input type="text" class="form-control" id="regEmail" placeholder="Name">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="regLogin" class="col-lg-2 control-label">Login</label>

                            <div class="col-lg-10 has-warning">
                                <input type="text" class="form-control" id="regLogin" placeholder="Login">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="regPassword" class="col-lg-2 control-label">Password</label>

                            <div class="col-lg-10 has-warning">
                                <input type="password" class="form-control" id="regPassword" placeholder="Password">
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