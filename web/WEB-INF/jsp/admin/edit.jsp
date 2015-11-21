<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="drinkList" scope="request" type="java.util.List"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>EditDrinks</title>
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
                <%--<li><a href="profile" class="">Profile</a></li>--%>
                <%--<li><a href="filling" class="list-group-item-warning">Admin</a></li>--%>
                <%--<hr/>--%>
                <%--<li><a href="mainlogin" class="">Login</a></li>--%>
                <%--<li><a href="logout" class="">Logout</a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>

        <div class="col-lg-10">
            <div class="btn-group btn-group-justified">
                <a href="new" class="btn btn-default">New</a>
                <a href="#" class="btn btn-warning">Edit Drinks</a>
                <a href="additives" class="btn btn-default">Edit Additives</a>
                <a href="filling" class="btn btn-default">Filling</a>
            </div>
        </div>

        <div class="col-lg-10">

            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr class="warning">
                    <th>#</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Edit</th>
                    <th>Delete</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="drink" items="${drinkList}">
                    <tr>
                        <td>${drink.getId()}</td>
                        <td>${drink.getTitle()}</td>
                        <td>${drink.getPrice()}</td>
                        <td>${drink.getDescription()}</td>
                        <td><a href="/editDrink?id=${drink.getId()}" class="btn btn-success">E</a></td>
                        <td><a href="/delete?id=${drink.getId()}" class="btn btn-danger">X</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>

    </div>
</div>
</body>
</html>

