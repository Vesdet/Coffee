<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 20.11.2015
  Time: 0:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="title" scope="request" type="java.lang.String"/>
<html>
<head>
    <title>Error!</title>
    <link href="../../../css/bootstrap.css" rel="stylesheet">
    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
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
                    <h3 class="panel-title"><fmt:message key='error'/>!!</h3>
                </div>
                <div class="panel-body">
                    <fmt:message key='errorCount.text'/>
                </div>
            </div>
        </div>

        <a href="/" class="btn btn-warning"><fmt:message key='error.goMain'/></a>
    </div>
</div>
</body>
</html>
