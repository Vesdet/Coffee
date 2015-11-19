<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="userBean" scope="session" type="DAO.Users.UserBean"/>
<jsp:useBean id="drinkList" scope="session" type="java.util.List"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Buy</title>
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
        <div class="col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="/" class="">Main page</a></li>
                <li><a href="registration" class="">Registration</a></li>
                <li><a href="profile" class="list-group-item-warning">Profile</a></li>
                <hr/>
                <li><a href="mainlogin" class="">Login</a></li>
                <li><a href="logout" class="">Logout</a></li>
            </ul>
        </div>

        <div class="col-lg-8">

            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr class="warning">
                    <th>#</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Buy</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="drink" items="${drinkList}">
                    <tr>
                        <td>${drink.getId()}</td>
                        <td>${drink.getTitle()}</td>
                        <td>${drink.getPrice()}</td>
                        <td>${drink.getDescription()}</td>
                        <td><a href="buy?id=${drink.getId()}" class="btn btn-info">B</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>

        <div class="col-lg-2 pull-right">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Your account</h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="my-badge">${userBean.getName()}</span>
                            Name
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${userBean.getLogin()}</span>
                            Login
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${userBean.getMoney()}</span>
                            Money
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${userBean.getRole()}</span>
                            Status
                        </li>
                    </ul>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
</body>
</html>
