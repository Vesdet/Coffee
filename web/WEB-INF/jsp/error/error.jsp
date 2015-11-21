<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 16.11.2015
  Time: 22:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error!</title>
    <link href="../../../css/bootstrap.css" rel="stylesheet">
    <link href="../../../css/style.css" rel="stylesheet">
</head>
<body>
<div class="container myback">
    <div class="row">
        <div class="col-lg-15">
            <h1 class="page-header"><i>ShinimaCoffee</i></h1>
        </div>
    </div>

    <div class="row">
        <div class="col-lg-6">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Error!!</h3>
                </div>
                <div class="panel-body">
                    Incorrect user name or password
                    OR
                    This Login already exist
                </div>
            </div>
        </div>

        <a href="/" class="btn btn-warning">Go to Main Page</a>
        <a href="/registration" class="btn btn-warning">Registration</a>
    </div>
</div>


</body>
</html>
