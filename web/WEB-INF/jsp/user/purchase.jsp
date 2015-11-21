<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 20.11.2015
  Time: 0:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:useBean id="userBean" scope="session" type="DAO.Users.UserBean"/>--%>
<jsp:useBean id="drink" scope="session" type="DAO.Drinks.Drink"/>
<jsp:useBean id="additivesList" scope="session" type="java.util.List"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Buy</title>
    <link href="../../../css/bootstrap.css" rel="stylesheet">
    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="container myback">
    <%--<div class="row">--%>
        <%--<div class="col-lg-15">--%>
            <%--<h1 class="page-header"><i>ShinimaCoffee</i></h1>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="row">--%>
        <%@ include file="../my-side-bar.jsp" %>
        <%--<div class="col-md-2 sidebar">--%>
            <%--<ul class="nav nav-sidebar">--%>
                <%--<li><a href="/" class="">Main page</a></li>--%>
                <%--<li><a href="registration" class="">Registration</a></li>--%>
                <%--<li><a href="profile" class="">Profile</a></li>--%>
                <%--<hr/>--%>
                <%--<li><a href="mainlogin" class="">Login</a></li>--%>
                <%--<li><a href="logout" class="">Logout</a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>

        <div class="col-lg-5">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">You bought</h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="my-badge">${drink.price}&nbsp;<i class="fa fa-rub"></i></span>
                            ${drink.title}
                        </li>
                        <hr/>
                        <c:forEach var="additive" items="${additivesList}">
                            <li class="list-group-item">
                                <span class="my-badge">${additive.getPrice()}&nbsp;<i class="fa fa-rub"></i></span>
                                    ${additive.getTitle()}
                            </li>
                        </c:forEach>
                    </ul>
                    <div class="col-lg-8 col-lg-offset-2">
                        <a href="profile" class="btn btn-warning">Ok!</a>
                    </div>
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
                            <span class="my-badge">${userBean.getMoney()}&nbsp;<i class="fa fa-rub"></i></span>
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
