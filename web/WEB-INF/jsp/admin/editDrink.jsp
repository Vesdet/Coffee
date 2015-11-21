<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 19.11.2015
  Time: 2:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="drink" scope="request" type="DAO.Drinks.Drink"/>
<html>
<head>
    <title>EditDrink</title>
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
        <%--col-lg-offset-1--%>
        <div class="col-lg-5">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Edit Drink</h3>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" action="editDrink?id=${drink.id}" method="post">
                        <div class="form-group">
                            <label class="col-lg-4 control-label">Title</label>

                            <div class="col-lg-8 has-warning">
                                <input type="text" class="form-control" name="editTitle" placeholder="Title" value="${drink.title}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label">Price</label>

                            <div class="col-lg-8 has-warning">
                                <input type="number" class="form-control" name="editPrice" placeholder="Price" value="${drink.price}">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-lg-4 control-label">Description</label>

                            <div class="col-lg-8 has-warning">
                                <textarea class="form-control" rows="3" id="textArea" name="editDescription" placeholder="Description">${drink.description}</textarea>
                                <%--<input type="text" class="form-control" name="addPrice" placeholder="Description">--%>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-lg-8 col-lg-offset-2">
                                <button type="submit" class="btn btn-warning">Submit</button>
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
