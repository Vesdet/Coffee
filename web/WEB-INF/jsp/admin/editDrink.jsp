<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="drink" scope="request" type="DAO.Drinks.Drink"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>EditDrink</title>
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
                    <h3 class="panel-title"><fmt:message key='admin.drinks'/></h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" action="editDrink?id=${drink.id}" method="post">
                        <div class="form-group">
                            <label class="col-lg-4 control-label"><fmt:message key='title'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="editTitle" placeholder="<fmt:message key='title'/>" value="${drink.title}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label"><fmt:message key='price'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="number" class="form-control" name="editPrice" placeholder="<fmt:message key='price'/>" value="${drink.price}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label"><fmt:message key='description'/></label>

                            <div class="col-lg-8 has-warning">
                                <textarea  class="form-control" rows="10" id="textArea" name="editDescription" placeholder="<fmt:message key='description'/>">${drink.description}</textarea>
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
