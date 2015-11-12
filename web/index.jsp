<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 11.11.2015
  Time: 20:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Shinima</title>

    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>

<div class="container myback">

    <div class="row">

        <div class="col-lg-15">

            <h1 class="page-header"><i>ShinimaCoffee</i></h1>

        </div>

    </div>
    <div class="row">

        <div class="col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><a href="index.jsp" class="list-group-item-warning">Main page</a></li>
                <li><a href="login.jsp" class="">Login</a></li>
                <li><a href="buy.jsp" class="">Buy</a></li>
            </ul>
        </div>

        <div class="col-lg-10">
            <%--<a href="login.jsp" class="btn btn-warning">Sign In</a>--%>
            <%--<a href="#" class="btn btn-warning">Sing Out</a>--%>
            <%--<a href="#" class="btn btn-warning">Warning</a>--%>

            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title">Hello,World</h3>
                </div>
                <div class="panel-body">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus accusantium aliquam aut beatae,
                    eos esse exercitationem fugiat fugit illo, laborum modi mollitia non odit, quasi quia quos tempora
                    tempore voluptates.
                </div>
            </div>

            <table class="table table-striped table-hover table-bordered">
                <thead>
                <tr class="warning">
                    <th>#</th>
                    <th>Title</th>
                    <th>Price</th>
                    <th>Description</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                <tr>
                    <td>1</td>
                    <td>Эспрессо</td>
                    <td>35</td>
                    <td>Эспрессо – кофейный напиток. На одну порцию эспрессо уходит 7 гр. молотого кофе на 30 мл воды.
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Капучино</td>
                    <td>55</td>
                    <td>Капуччино – это кофейный напиток, в котором смешаны третья часть эспрессо, третья часть
                        кипяченого молока и третья часть вспененного молока (молоко для капуччино вспенивают при помощи
                        водяного пара).
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="form-group has-warning">
                <label class="control-label" for="inputWarning">Input warning</label>
                <input type="text" class="form-control" id="inputWarning">
            </div>

        </div>
    </div>

</div>
</body>
</html>
