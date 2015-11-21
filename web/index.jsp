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
    <link href="font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="container myback">

        <%@ include file="WEB-INF/jsp/my-side-bar.jsp" %>

        <div class="col-lg-10">

            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Hello, my dear friend!</h3>
                </div>
                <div class="panel-body">
                    <p><i class="fa fa-coffee fa-2x"></i><i>«Аромат – это душа кофе, если и её научатся подделывать, то жить будет совсем тоскливо».</i></p>
                    <hr/>
                    <p>На данном сайте ты можешь насладится изысканными вкусами кофе в сочетании с великолепными добавками.</p>
                    <p>Многие предпочитают не добавлять в кофе ничего, даже от сахара отказываются. Если ты один из них, то тут ты можешь испить вкуснейший эспрессо!</p>
                    <p>Если же тебе нравятся кофейные эксперименты, то ты не сможешь устоять перед чашкой кофе с вишнёвым ликером или с добавлением мускатного ореха.</p>
                    <p>Всего-лишь нужно пройти <a href="registration">регистрацию</a> и тогда... перед тобой откроются все виды кофейных напитков и весь удивительный список добавок!</p>
                    <p>И знай, даже самые обычные добавки могут еще больше раскрыть вкус кофе.</p>
                </div>
            </div>
            <%--<table class="table table-striped table-hover table-bordered">--%>
                <%--<thead>--%>
                <%--<tr class="warning">--%>
                    <%--<th>#</th>--%>
                    <%--<th>Title</th>--%>
                    <%--<th>Price</th>--%>
                    <%--<th>Description</th>--%>
                <%--</tr>--%>
                <%--</thead>--%>
                <%--<tbody>--%>
                <%--<c:forEach var="drink" items="${drinkList}">--%>
                    <%--<tr>--%>
                        <%--<td>${drink.getId()}</td>--%>
                        <%--<td>${drink.getTitle()}</td>--%>
                        <%--<td>${drink.getPrice()}</td>--%>
                        <%--<td>${drink.getDescription()}</td>--%>
                    <%--</tr>--%>
                <%--</c:forEach>--%>
                <%--</tbody>--%>
            <%--</table>--%>

            <%--<div class="form-group has-warning">--%>
                <%--<label class="control-label" for="inputWarning">Input warning</label>--%>
                <%--<input type="text" class="form-control" id="inputWarning">--%>
            <%--</div>--%>

        </div>
    </div>

</div>
</body>
</html>
