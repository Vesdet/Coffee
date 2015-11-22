<%--
  Created by IntelliJ IDEA.
  User: Vesdet
  Date: 21.11.2015
  Time: 1:10
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--${request.getServletPath().equals(\"/index.jsp\")}--%>
<div class="row">

    <div class="col-lg-15">
        <h1 class="page-header"><img src="css/img2.png" width="200" height="100"/><i>ShinimaCoffee</i></h1>
    </div>

</div>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="userBean" scope="session" class="DAO.Users.UserBean"/>
<div class="row">
<div class="col-md-2 sidebar">
    <ul class="nav nav-sidebar">
        <li><a href="/" class="
            <c:if test="${pageContext.request.getServletPath().equals('/index.jsp')}">
            list-group-item-warning
            </c:if>
            "><i class="fa fa-fire fa-fw"></i>&nbsp;<fmt:message key='sidebar.main'/></a></li>
        <c:if test="${userBean.login == null}">
            <li><a href="registration" class="
                <c:if test="${pageContext.request.getServletPath().equals('/WEB-INF/jsp/registration.jsp')}">
                list-group-item-warning
                </c:if>
                "><i class="fa fa-newspaper-o"></i>&nbsp;<fmt:message key='sidebar.reg'/></a></li>
        </c:if>
        <c:if test="${userBean.role == 'user'}">
            <li><a href="profile" class="
                <c:if test="${pageContext.request.getServletPath().equals('/WEB-INF/jsp/user/profile.jsp')}">
                list-group-item-warning
                </c:if>
                <c:if test="${pageContext.request.getServletPath().equals('/WEB-INF/jsp/user/buy.jsp')}">
                list-group-item-warning
                </c:if>
                "><i class="fa fa-user"></i>&nbsp;<fmt:message key='sidebar.profile'/></a></li>
        </c:if>
        <c:if test="${userBean.role == 'admin'}">
            <li><a href="filling" class="
                <c:if test="${pageContext.request.getServletPath().equals('/WEB-INF/jsp/admin/filling.jsp')}">
                list-group-item-warning
                </c:if>
                <c:if test="${pageContext.request.getServletPath().equals('/WEB-INF/jsp/admin/new.jsp')}">
                list-group-item-warning
                </c:if>
                <c:if test="${pageContext.request.getServletPath().equals('/WEB-INF/jsp/admin/edit.jsp')}">
                list-group-item-warning
                </c:if>
                <c:if test="${pageContext.request.getServletPath().equals('/WEB-INF/jsp/admin/editAdditives.jsp')}">
                list-group-item-warning
                </c:if>
                "><i class="fa fa-diamond"></i>&nbsp;<fmt:message key='sidebar.admin'/></a></li>
        </c:if>
        <hr/>
        <c:if test="${userBean.login == null}">
            <li><a href="mainlogin" class="
                <c:if test="${pageContext.request.getServletPath().equals('/WEB-INF/jsp/login.jsp')}">
                list-group-item-warning
                </c:if>
                "><i class="fa fa-sign-in"></i>&nbsp;<fmt:message key='sidebar.login'/></a></li>
        </c:if>
        <c:if test="${userBean.login != null}">
            <li><a href="logout" class=""><i class="fa fa-sign-out"></i>&nbsp;<fmt:message key='sidebar.logout'/></a></li>
        </c:if>
        <hr/>
        <li><a href="changeLocale?locale=ru_RU" class="">&nbsp;<fmt:message key='sidebar.rus'/></a></li>
        <li><a href="changeLocale?locale=en_US" class="">&nbsp;<fmt:message key='sidebar.eng'/></a></li>
    </ul>
</div>
