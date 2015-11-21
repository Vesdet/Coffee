<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:useBean id="userBean" scope="session" type="DAO.Users.UserBean"/>--%>
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
                <%--<li><a href="profile" class="list-group-item-warning">Profile</a></li>--%>
                <%--<hr/>--%>
                <%--<li><a href="mainlogin" class="">Login</a></li>--%>
                <%--<li><a href="logout" class="">Logout</a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>

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
            <hr/>
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Fill up money</h3>
                </div>
                <div class="panel-body">
                    <form action="profile" method="post" class="form-horizontal">
                        <div class="form-group">
                            <div class="form-group">
                                <label class="col-lg-3 col-lg-offset-1 control-label">Money</label>

                                <div class="col-lg-7">
                                    <select class="form-control col-lg-offset-1"
                                            name="money"/>">
                                        <option>0</option>
                                        <option>1</option>
                                        <option>5</option>
                                        <option>25</option>
                                        <option>100</option>
                                        <option>500</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8">
                                <button type="submit" class="btn btn-warning">Fill up</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</div>
</body>
</html>
