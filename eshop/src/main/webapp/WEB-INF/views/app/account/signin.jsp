<%--
  Created by IntelliJ IDEA.
  User: Joseph
  Date: 2016/12/6
  Time: 15:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/includes.jsp"%>
<html>
    <body>
        <div>
            <form id="signInForm" action="/j_spring_security_check" method="post">
                <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
                    <div class="alert alert-danger">${SPRING_SECURITY_LAST_EXCEPTION.message}</div>
                </c:if>
                <div class="form-group">
                    <label class="col-lg-3 control-labol">用户名<span class="text-danger">*</span></label>
                    <div class="col-lg-7">
                        <input type="text" id="j_username" name="j_username" value="${user_login_name}" class="form-control" placeholder="请输入用户名">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-3 control-label">密码<span class="text-danger">*</span> </label>
                    <div class="col-lg-7">
                        <input type="password" id="j_password" name="j_password" class="form-control" placeholder="请输入密码"/>
                    </div>
                </div>
                <%--<div>--%>
                    <%--<input id="_spring_security_remember_me" name="_spring_security_remember_me" type="checkbox" value="true"/>--%>
                    <%--<label for="_spring_security_remember_me">记住登陆状态？</label>--%>
                <%--</div>--%>
                <div class="col-lg-4 text-right">
                    <button class="btn btn-primary" type="submit">登录</button>
                </div>
            </form>
        </div>
    </body>
</html>
