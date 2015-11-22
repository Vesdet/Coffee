<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Login</title>
    <link href="../../css/bootstrap.css" rel="stylesheet">
    <link href="../../css/style.css" rel="stylesheet">
    <link href="../../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>

<div class="container myback">
        <%@ include file="my-side-bar.jsp" %>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='signIn'/></h3>
                </div>
                <div class="panel-body">
                    <form action="j_security_check" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-3 control-label"><fmt:message key='login'/></label>

                            <div class="col-lg-8 has-warning">
                                <input name="j_username" type="text" class="form-control"
                                       placeholder="<fmt:message key='login'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label  class="col-lg-3 control-label"><fmt:message key='password'/></label>

                            <div class="col-lg-8 has-warning">
                                <input name="j_password" type="password" class="form-control"
                                        placeholder="<fmt:message key='password'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-3">
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