<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Joseph
  Date: 2016/12/6
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<c:forEach items="${accountList}" var="account">
    <h2> ${account.accountName} </h2>
</c:forEach>
</body>
</html>
