<%--
  Created by IntelliJ IDEA.
  User: lenovo
  Date: 2019/12/9
  Time: 22:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";//+"WEB-INF/classes/com/controller/"
    pageContext.setAttribute("path", path);
    pageContext.setAttribute("basePath",basePath);

%>
<!DOCTYPE HTML>
<html>
<head>
    <title>退网服务</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">

        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: red;
            border-radius: 4px;
            font: -apple-system-caption2;
        }
        h2{
            text-align: center;
            font-size: small;
            font: -apple-system-body;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    SosoService服务
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>氪金网页</small>
                </h1>

            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/soso/chargeMoney" name="userForm" >
        钱数：<input type="text" name="money">元<br><br><br>

        <button type="submit" >充钱</button>&nbsp;&nbsp;
        <button type="reset" >清空</button>

    </form>
    <h2>
        ${sessionScope.get("chargeInfo")}
    </h2>


</div>
<h3>
    <a href="${path}/user.jsp">返回用户主页面</a>
</h3>
</body>







