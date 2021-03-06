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
    <title>注册服务</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
        h4 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: red;
            border-radius: 4px;
            font: -apple-system-caption2;
        }
        h3 {
            width: 180px;
            height: 38px;
            margin: 100px auto;
            text-align: center;
            line-height: 38px;
            background: deepskyblue;
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
                    <small>${sessionScope.get("user").getUserName()}您好！</small>
                </h1>
            </div>
        </div>
    </div>
        <h3>
            <a href="${pageContext.request.contextPath}/soso/getInfo" >资费说明</a>
        </h3>
        <h3>
            <a href="${pageContext.request.contextPath}/soso/getMonthList" >查询本月账单</a>
        </h3>
        <h3>
            <a href="${path}/soso/printDetailedList" >打印消费详单</a>
        </h3>

    <h3>
            <a href="${path}/soso/getRemainInfo" >查询套餐余量</a>
        </h3>
        <h3>
            <a href="${path}/changePackPage.jsp" >修改服务包</a>
        </h3>
        <h3>
            <a href="${path}/chargePage.jsp" >氪金</a>
        </h3>
        <h3>
            <a href="${path}/useSoso.jsp" >使用Soso</a>
        </h3>

</div>
<h4>
    <a href="${path}/index.jsp">返回</a>
</h4>
</body>







