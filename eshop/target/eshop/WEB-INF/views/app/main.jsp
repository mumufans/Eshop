<%--
  Created by IntelliJ IDEA.
  User: Joseph
  Date: 2016/12/7
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/includes.jsp"%>

<div class="nav" role="navigation">
    <div>
        <%--<button type="button" class="navbar-toggle pull-left animated flip">--%>
            <%--<span class="sr-only">切换导航</span>--%>
            <%--<span class="icon-bar"></span>--%>
            <%--<span class="icon-bar"></span>--%>
            <%--<span class="icon-bar"></span>--%>
        <%--</button>--%>
        <a href="<c:url value='/'/>"><img alt="Logo" width="429" height="96" src="<c:url value='/resources/images/2_586_3566_412_380.jpg'/>"/></a>
        <ul class="collapse navbar-collapse nav navbar-nav top-menu pull-right">
            <li>
                <a href="<c:url value="/"/>"><h3><i class="glyphicon glyphicon-home"></i>首页</h3></a>
            </li>
        </ul>
    </div>
</div>
