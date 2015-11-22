<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 11.11.2015
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="drinkList" scope="request" type="java.util.List"/>
<%--<jsp:useBean id="bundle" scope="session" type="java.util.ResourceBundle"/>--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--<fmt:setLocale value="en_US" scope="session" />--%>

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
                    <h3 class="panel-title"><fmt:message key='main.title'/></h3>
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-7">
                            <img src="css/img1.png"/>
                        </div>
                        <div class="col-lg-1">
                            <i class="fa fa-coffee fa-2x"></i>
                        </div>
                        <div class="col-lg-3">
                            <i>&nbsp;<fmt:message key='main.quote'/></i>
                        </div>
                    </div>
                    <hr/>
                    <fmt:message key='main.text'/>
                </div>
            </div>
        </div>
    </div>

</div>
</body>
</html>
