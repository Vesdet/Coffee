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
</head>
<body>
<div class="container myback">
    <%--<div class="row">--%>
        <%--<div class="col-lg-15">--%>
            <%--<h1 class="page-header"><i>ShinimaCoffee</i></h1>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="row">--%>
        <%@ include file="../my-side-bar.jsp" %>
        <%--<div class="col-md-2 sidebar">--%>
            <%--<ul class="nav nav-sidebar">--%>
                <%--<li><a href="/" class="">Main page</a></li>--%>
                <%--<li><a href="registration" class="">Registration</a></li>--%>
                <%--<li><a href="profile" class="">Profile</a></li>--%>
                <%--<li><a href="filling" class="list-group-item-warning">Admin</a></li>--%>
                <%--<hr/>--%>
                <%--<li><a href="mainlogin" class="">Login</a></li>--%>
                <%--<li><a href="logout" class="">Logout</a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>

        <div class="col-lg-10">
            <div class="btn-group btn-group-justified">
                <a href="#" class="btn btn-warning">New</a>
                <a href="edit" class="btn btn-default">Edit Drinks</a>
                <a href="additives" class="btn btn-default">Edit Additives</a>
                <a href="filling" class="btn btn-default">Filling</a>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Add Drink</h3>
                </div>
                <div class="panel-body">
                    <form action="addDrink" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-4 control-label">Title</label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="addTitle" placeholder="Title">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label">Price</label>

                            <div class="col-lg-8 has-warning">
                                <input type="number" class="form-control" name="addPrice" placeholder="Price">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label">Description</label>

                            <div class="col-lg-8 has-warning">
                                <textarea class="form-control" rows="3" id="textArea" name="addDescription"
                                          placeholder="Description"></textarea>
                                <%--<input type="text" class="form-control" name="addPrice" placeholder="Description">--%>
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
                                <button type="submit" class="btn btn-warning">Add Drink!</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="col-lg-4">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Add Additive</h3>
                </div>
                <div class="panel-body">
                    <form action="addAdditive" method="post" class="form-horizontal">
                        <div class="form-group">
                            <label class="col-lg-4 control-label">Title</label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="addATitle" placeholder="Title">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label">Price</label>

                            <div class="col-lg-8 has-warning">
                                <input type="number" class="form-control" name="addAPrice" placeholder="Price">
                            </div>
                        </div>
                        <%--<div class="form-group">--%>
                            <%--<label class="col-lg-4 control-label">Description</label>--%>

                            <%--<div class="col-lg-8 has-warning">--%>
                                <%--<textarea class="form-control" rows="3" id="textArea" name="addDescription"--%>
                                          <%--placeholder="Description"></textarea>--%>
                                <%--&lt;%&ndash;<input type="text" class="form-control" name="addPrice" placeholder="Description">&ndash;%&gt;--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-1">
                                <button type="submit" class="btn btn-warning">Add Additives!</button>
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
