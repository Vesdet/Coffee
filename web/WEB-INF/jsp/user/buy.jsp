<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 12.11.2015
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="drink" scope="request" type="DAO.Drinks.Drink"/>
<jsp:useBean id="additives" scope="session" type="java.util.List"/>
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
        <%@ include file="../my-side-bar.jsp" %>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='confirm.title'/></h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="my-badge">${drink.title}</span>
                            <fmt:message key='title'/>
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${drink.price}&nbsp;<i class="fa fa-rub"></i></span>
                            <fmt:message key='price'/>
                        </li>
                    </ul>
                    <hr/>
                    <form class="form-horizontal" action="buy?id=${drink.id}" method="post">
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-1">
                                <select class="form-control"
                                        name="additiveTitle1"/>">
                                <option><fmt:message key='drink.without'/></option>
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
                                <option><fmt:message key='drink.without'/></option>
                                <c:forEach var="additive" items="${additives}">
                                    <option>${additive.getTitle()}</option>
                                </c:forEach>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-2">
                                <button type="submit" class="btn btn-warning"><fmt:message key='confirm.title'/>!</button>
                                <a href="profile" class="btn btn-warning"><fmt:message key='cancel'/></a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-lg-2 pull-right">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='user.account'/></h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="my-badge">${userBean.getName()}</span>
                            <fmt:message key='name'/>
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${userBean.getLogin()}</span>
                            <fmt:message key='login'/>
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${userBean.getMoney()}&nbsp;<i class="fa fa-rub"></i></span>
                            <fmt:message key='user.money'/>
                        </li>
                        <li class="list-group-item">
                            <span class="my-badge">${userBean.getRole()}</span>
                            <fmt:message key='user.status'/>
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
