<%@ page language="java" import="java.util.*" pageEncoding="utf-8" autoFlush="true"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>

<head>
    <base href="<%=basePath%>"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>Login</title>
    <script src="https://www.layuicdn.com/auto/layui.js"></script>
    <style>

        body {
            background-color: #e7e7e7;
        }

        input:-webkit-autofill {
            -webkit-box-shadow: inset 0 0 0 1000px #fff;
            background-color: transparent;

        }

        .admin-login-background {
            width: 300px;
            height: 300px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin-left: -150px;
            margin-top: -100px;
        }

        .admin-header {
            margin-top: -100px;
            margin-bottom: 20px;
        }

        .admin-logo {
            width: 280px;
        }

        .admin-button {
            margin-top: 20px;
        }

        .admin-input {

            border-top-style: none;
            border-right-style: solid;
            border-bottom-style: solid;
            border-left-style: solid;
            height: 50px;
            width: 300px;
            padding-bottom: 0px;
        }


        .admin-input-username {
            border-top-style: solid;
            border-radius: 10px 10px 0 0;
        }

        .admin-input-verify {
            border-radius: 0 0 10px 10px;
        }

        .admin-button {
            width: 300px;
            height: 50px;
            border-radius: 4px;
            background-color: #2d8cf0;
        }

        .admin-icon {
            margin-left: 260px;
            margin-top: 10px;
            font-size: 30px;
        }

        i {
            position: absolute;
        }

        .admin-captcha {
            position: absolute;
            margin-left: 205px;
            margin-top: -40px;
        }
    </style>
</head>
<body>
<div id="container">
    <div></div>
    <div class="admin-login-background">
        <form class="layui-form" action="login">
            <div>
                <i class="layui-icon layui-icon-username admin-icon admin-icon-username"></i>
                <input type="text" name="username" placeholder="请输入账号"
                       autocomplete="off"
                       class="layui-input admin-input admin-input-username">
            </div>
            <div>
                <i class="layui-icon layui-icon-password admin-icon admin-icon-password"></i>
                <input type="password" name="password"
                       placeholder="请输入密码"
                       autocomplete="off"
                       class="layui-input admin-input">
            </div>

            <div>
                <a href="register.jsp">注册</a>
            </div>
            <button class="layui-btn admin-button" lay-submit lay-filter="formDemo">登陆</button>


        </form>
    </div>
</div>
<script>
    <%
        if (request.getAttribute("msg")!=null){
            %>
        alert("${msg}")
    <%
        }
    %>
</script>
</body>
</html>
