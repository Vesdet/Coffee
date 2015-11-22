<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="ingredients" scope="request" type="java.util.List"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>New</title>
    <link href="../../../css/bootstrap.css" rel="stylesheet">
    <link href="../../../css/style.css" rel="stylesheet">
    <link href="../../../font-awesome-4.4.0/css/font-awesome.min.css" rel="stylesheet">
</head>
<body>
<div class="container myback">
        <%@ include file="../my-side-bar.jsp" %>

        <div class="col-lg-10">
            <div class="btn-group btn-group-justified">
                <a href="#" class="btn btn-warning"><fmt:message key='admin.new'/></a>
                <a href="edit" class="btn btn-default"><fmt:message key='admin.drinks'/></a>
                <a href="additives" class="btn btn-default"><fmt:message key='admin.additives'/></a>
                <a href="filling" class="btn btn-default"><fmt:message key='admin.filling'/></a>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='new.addD'/></h3>
                </div>
                <div class="panel-body">
                    <form action="addDrink" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-4 control-label"><fmt:message key='title'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="addTitle" placeholder="<fmt:message key='title'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label"><fmt:message key='price'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="number" class="form-control" name="addPrice" placeholder="<fmt:message key='price'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label"><fmt:message key='description'/></label>

                            <div class="col-lg-8 has-warning">
                                <textarea class="form-control" rows="3" id="textArea" name="addDescription"
                                          placeholder="<fmt:message key='description'/>"></textarea>
                            </div>
                        </div>
                        <c:forEach var="ingredient" items="${ingredients}">
                            <div class="form-group">
                                <label class="col-lg-4 control-label">${ingredient.getTitle()}</label>

                                <div class="col-lg-5">
                                    <select class="form-control col-lg-offset-1"
                                            name="<c:out value="add${ingredient.getTitle()}"/>">
                                        <option>0</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                    </select>
                                </div>
                            </div>
                        </c:forEach>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-1">
                                <button type="submit" class="btn btn-warning"><fmt:message key='new.addD'/>!</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title"><fmt:message key='new.addA'/></h3>
                </div>
                <div class="panel-body">
                    <form action="addAdditive" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-4 control-label"><fmt:message key='title'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="addATitle" placeholder="<fmt:message key='title'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label"><fmt:message key='price'/></label>

                            <div class="col-lg-8 has-warning">
                                <input type="number" class="form-control" name="addAPrice" placeholder="<fmt:message key='price'/>">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-1">
                                <button type="submit" class="btn btn-warning"><fmt:message key='new.addA'/>!</button>
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
