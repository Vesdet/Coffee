<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 18.11.2015
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="ingredients" scope="request" type="java.util.List"/>
<jsp:useBean id="additives" scope="request" type="java.util.List"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Filling</title>
    <link href="../../../css/bootstrap.css" rel="stylesheet">
    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="container myback">
        <%@ include file="../my-side-bar.jsp" %>

        <div class="col-lg-10">
            <div class="btn-group btn-group-justified">
                <a href="new" class="btn btn-default"><fmt:message key='admin.new'/></a>
                <a href="edit" class="btn btn-default"><fmt:message key='admin.drinks'/></a>
                <a href="additives" class="btn btn-default"><fmt:message key='admin.additives'/></a>
                <a href="#" class="btn btn-warning"><fmt:message key='admin.filling'/></a>
            </div>
        </div>

        <div class="col-lg-3">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='filling.ingredient'/></h3>
                </div>
                <div class="panel-body">
                    <form action="fillUp" method="post" class="form-horizontal">
                        <c:forEach var="ingredient" items="${ingredients}">
                            <div class="form-group">
                                <label class="col-lg-5 control-label">${ingredient.getTitle()}</label>

                                <div class="col-lg-5">
                                    <select class="form-control col-lg-offset-1"
                                            name="<c:out value="${ingredient.getTitle()}"/>">
                                        <option>0</option>
                                        <option>1</option>
                                        <option>5</option>
                                        <option>25</option>
                                        <option>100</option>
                                        <option>500</option>
                                    </select>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-1">
                                <button type="submit" class="btn btn-warning"><fmt:message key='fill'/></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='filling.additive'/></h3>
                </div>
                <div class="panel-body">
                    <form action="fillUp" method="get" class="form-horizontal">
                            <div class="form-group">
                                <div class="col-lg-8">
                                    <select class="form-control"
                                            name="additiveTitle"/>">
                                        <c:forEach var="additive" items="${additives}">
                                        <option>${additive.getTitle()}</option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <div class="col-lg-4">
                                    <select class="form-control"
                                            name="additiveCount"/>">
                                        <option>5</option>
                                        <option>25</option>
                                        <option>100</option>
                                        <option>500</option>
                                    </select>
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

        <div class="col-lg-3 pull-right">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='filling.amountI'/></h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <c:forEach var="ingredient" items="${ingredients}">
                            <li class="list-group-item">
                                <span class="my-badge">${ingredient.getCount()}</span>
                                    ${ingredient.getTitle()}
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='filling.amountA'/></h3>
                </div>
                <div class="my-panel-body">
                    <ul class="list-group">
                        <c:forEach var="additive" items="${additives}">
                            <li class="list-group-item">
                                <span class="my-badge">${additive.getCount()}</span>
                                    ${additive.getTitle()}
                            </li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
