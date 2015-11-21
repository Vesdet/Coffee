<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 21.11.2015
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="log" scope="request" type="java.lang.String"/>
<jsp:useBean id="pas" scope="request" type="java.lang.String"/>
<%--<jsp:useBean id="userBean" scope="session" type="DAO.Users.UserBean"/>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Buy</title>
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="container myback">

    <%@ include file="my-side-bar.jsp" %>

    <div class="col-lg-5">
        <div class="panel panel-warning">
            <div class="panel-heading">
                <h3 class="panel-title">Registration is successfully complete</h3>
            </div>
            <div class="my-panel-body">
                <ul class="list-group">
                    <li class="list-group-item">
                        <span class="my-badge">${log}</span>
                        Your Login
                    </li>
                    <hr/>
                    <li class="list-group-item">
                        <span class="my-badge">${pas}</span>
                        Your Password
                    </li>
                </ul>
                <div class="col-lg-8 col-lg-offset-2">
                    <a href="mainlogin" class="btn btn-warning">Ok!</a>
                </div>
            </div>
        </div>
    </div>

</div>
</div>
</div>
</body>
</html>
