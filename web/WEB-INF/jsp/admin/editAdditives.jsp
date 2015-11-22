<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 17:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="additiveList" scope="request" type="java.util.List"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>EditAdditives</title>
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
                <a href="#" class="btn btn-warning"><fmt:message key='admin.additives'/></a>
                <a href="filling" class="btn btn-default"><fmt:message key='admin.filling'/></a>
            </div>
        </div>

        <div class="col-lg-6">

            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr class="warning">
                    <th>#</th>
                    <th><fmt:message key='title'/></th>
                    <th><fmt:message key='price'/></th>
                    <th><fmt:message key='delete'/></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="additive" items="${additiveList}">
                    <tr>
                        <td>${additive.getId()}</td>
                        <td>${additive.getTitle()}</td>
                        <td>${additive.getPrice()}</td>
                        <td><a href="/additivedel?id=${additive.getId()}" class="btn btn-danger"><i class="fa fa-scissors"></i></a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>

        </div>

    </div>
</div>
</body>
</html>
