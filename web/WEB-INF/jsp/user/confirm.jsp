<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 23:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--<jsp:useBean id="userBean" scope="session" type="DAO.Users.UserBean"/>--%>
<jsp:useBean id="drink" scope="session" type="DAO.Drinks.Drink"/>
<jsp:useBean id="total" scope="session" type="java.lang.Integer"/>
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
        <%@ include file="../my-side-bar.jsp" %>

        <div class="col-lg-5">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='confirm.title'/>!</h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <li class="list-group-item">
                            <span class="my-badge">${drink.price}&nbsp;<i class="fa fa-rub"></i></span>
                            ${drink.title}
                        </li>
                        <c:forEach var="additive" items="${additivesList}">
                            <li class="list-group-item">
                                <span class="my-badge">${additive.getPrice()}&nbsp;<i class="fa fa-rub"></i></span>
                                    ${additive.getTitle()}
                            </li>
                        </c:forEach>
                        <hr/>
                        <li class="list-group-item">
                            <span class="my-badge">${total}&nbsp;<i class="fa fa-rub"></i></span>
                            <fmt:message key='total'/>:
                        </li>
                    </ul>
                    <div class="col-lg-8 col-lg-offset-2">
                        <a href="confirm" class="btn btn-warning"><fmt:message key='buy'/>!</a>
                        <a href="profile" class="btn btn-warning"><fmt:message key='cancel'/></a>
                    </div>
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
