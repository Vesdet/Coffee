<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 12.11.2015
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="user" scope="request" type="DAO.Users.UserBean"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Buy</title>
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
                <li><a href="/login" class="">Login</a></li>
                <li><a href="/buy" class="list-group-item-warning">Buy</a></li>
            </ul>
        </div>

        <div class="col-lg-2">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Your account</h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="my-badge">${user.getName()}</span>
                            Name
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${user.getLogin()}</span>
                            Login
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${user.getMoney()}</span>
                            Money
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">
                                <% if (user.isAdmin()) { %>
                                Admin
                                <% } else { %>
                                Lalka
                                <% } %>
                            </span>
                            Status
                        </li>
                    </ul>
                </div>
            </div>
        </div>

        <a href="logout" class="btn btn-warning">Logout</a>

    </div>
</div>
</div>
</body>
</html>
