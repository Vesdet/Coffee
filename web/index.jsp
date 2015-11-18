<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 11.11.2015
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="drinkList" scope="request" type="java.util.List"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Shinima</title>

    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
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
                <li><a href="/" class="list-group-item-warning">Main page</a></li>
                <li><a href="/registration" class="">Registration</a></li>
                <li><a href="/buy" class="">Buy</a></li>
                <li><a href="/filling" class="">Filling</a></li>
            </ul>
        </div>

        <div class="col-lg-10">

            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Hello,World</h3>
                </div>
                <div class="panel-body">
                    ВАСЯ ПУПКИНВАСЯ ПУПКИН
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus accusantium aliquam aut beatae,
                    eos esse exercitationem fugiat fugit illo, laborum modi mollitia non odit, quasi quia quos tempora
                    tempore voluptates.
                </div>
            </div>
            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr class="warning">
                    <th>#</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Description</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="drink" items="${drinkList}">
                    <tr>
                        <td>${drink.getId()}</td>
                        <td>${drink.getTitle()}</td>
                        <td>${drink.getPrice()}</td>
                        <td>${drink.getDescription()}</td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

            <div class="form-group has-warning">
                <label class="control-label" for="inputWarning">Input warning</label>
                <input type="text" class="form-control" id="inputWarning">
            </div>

        </div>
    </div>

</div>
</body>
</html>
