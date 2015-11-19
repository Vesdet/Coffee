<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 12.11.2015
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="userBean" scope="session" type="DAO.Users.UserBean"/>
<jsp:useBean id="drink" scope="request" type="DAO.Drinks.Drink"/>
<jsp:useBean id="additives" scope="session" type="java.util.List"/>
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
                <li><a href="profile" class="">Profile</a></li>
                <hr/>
                <li><a href="mainlogin" class="">Login</a></li>
                <li><a href="logout" class="">Logout</a></li>
            </ul>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Buy Drink</h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="my-badge">${drink.title}</span>
                            Title
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${drink.price}</span>
                            Price
                        </li>
                    </ul>
                    <hr/>
                    <form class="form-horizontal" action="buy?id=${drink.id}" method="post">
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-1">
                                <select class="form-control"
                                        name="additiveTitle1"/>">
                                <option>Without additive</option>
                                <c:forEach var="additive" items="${additives}">
                                    <option>${additive.getTitle()}</option>
                                </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-1">
                                <select class="form-control"
                                        name="additiveTitle2"/>">
                                <option>Without additive</option>
                                <c:forEach var="additive" items="${additives}">
                                    <option>${additive.getTitle()}</option>
                                </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-2">
                                <button type="submit" class="btn btn-warning">Buy Drink!</button>
                                <a href="profile" class="btn btn-warning">Cancel</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
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
