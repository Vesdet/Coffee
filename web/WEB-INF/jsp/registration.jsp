<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 17.11.2015
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Registration</title>
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<div class="container myback">
        <%@ include file="my-side-bar.jsp" %>
        <div class="col-lg-5">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='registration.title'/></h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" action="registration" method="post">
                        <div class="form-group">
                            <label class="col-lg-2 control-label"><fmt:message key='name'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="regName" placeholder="<fmt:message key='name'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label"><fmt:message key='login'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="regLogin" placeholder="<fmt:message key='login'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-2 control-label"><fmt:message key='password'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="password" class="form-control" name="regPassword" placeholder="<fmt:message key='password'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-2">
                                <button type="submit" class="btn btn-warning"><fmt:message key='submit'/></button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>
