<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 22:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="drinkList" scope="session" type="java.util.List"/>
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

        <div class="col-lg-8">

            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr class="warning">
                    <th>#</th>
                    <th><fmt:message key='title'/></th>
                    <th><fmt:message key='price'/>,<i class="fa fa-rub"></i></th>
                    <th><fmt:message key='description'/></th>
                    <th><fmt:message key='buy'/></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="drink" items="${drinkList}">
                    <tr>
                        <td>${drink.getId()}</td>
                        <td>${drink.getTitle()}</td>
                        <td>${drink.getPrice()}</td>
                        <td>${drink.getDescription()}</td>
                        <td><a href="buy?id=${drink.getId()}" class="btn btn-info"><i class="fa fa-hand-o-right"></i></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

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
            <hr/>
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><i class="fa fa-cc-visa"></i>&nbsp;<i class="fa fa-cc-mastercard"></i>&nbsp;<fmt:message key='user.fillMoney'/></h3>
                </div>
                <div class="panel-body">
                    <form action="profile" method="post" class="form-horizontal">
                        <div class="form-group">
                            <div class="form-group">
                                <label class="col-lg-3 col-lg-offset-1 control-label"><fmt:message key='user.money'/></label>

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
                                <button type="submit" class="btn btn-warning"><fmt:message key='fill'/></button>
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
