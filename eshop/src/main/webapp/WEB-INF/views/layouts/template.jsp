
<%--
  Created by IntelliJ IDEA.
  User: Joseph
  Date: 2016/12/7
  Time: 13:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/includes.jsp"%>
<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta http_equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><sitemesh:write property="title"/></title>
    <link href="<c:url value='/resources/css/bootstrap-cerulean.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/charisma-app.css'/>" rel="stylesheet">
    <link href="<c:url value='/resources/css/jquery.iphone.toggle.css'/>" rel='stylesheet'>
    <!-- Custom CSS -->
    <link href="${ctx}/resources/default/css/modern-business.css" rel="stylesheet">

    <link href="<c:url value='/resources/default/css/default.css'/>" rel="stylesheet">
    <link href="${ctx}/resources/default/css/default.css" rel="stylesheet">
    <!--jQuery-->
    <script src="/resources/js/jquery-3.1.1.min.js"></script>

    <!--bootstrap-->
    <script src="/resources/js/bootstrap.min.js"></script>
    <script src="/resources/js/bootbox.min.js"></script>
    <script src="/resources/default/js/main.js"></script>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="${ctx}/resources/default/js/jsml5shiv.js"></script>
    <script src="${ctx}/resources/default/js/respond.min.js"></script>
    <![endif]-->
    <script>
        var ctx='${ctx}';
    </script>
</head>
<body>
    <hr/>
    <sitemesh:write property="body"/>
    <hr/>
    <!--Footer-->
    <c:import url="/WEB-INF/views/layouts/default/footer.jsp" charEncoding="UTF-8"/>
</body>
</html>
