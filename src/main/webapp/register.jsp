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
    <title>Register</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <script src="https://www.layuicdn.com/auto/layui.js"></script>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>

    <style>

        .container{
            width: 500px;
            height: 500px;
            position: absolute;
            left:30%;
            top: 100px;
        }
    </style>
</head>

<body>
<div class="container">
<form class="layui-form"  action="users/register">


    <div class="layui-form-item">
        <label class="layui-form-label">用户名</label>
        <div class="layui-input-inline">
            <input type="text" name="username" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">密码</label>
        <div class="layui-input-inline">
            <input type="password" name="password" id="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">确认密码</label>
        <div class="layui-input-inline">
            <input type="password" id="repassword" onblur="checkPwd();" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <div class="layui-input-block">
            <button class="layui-btn"  id="testsubmits">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
        </div>
    </div>

</form>
</div>


<script>
    //Demo
    layui.use('form', function(){
        var form = layui.form;


    });

    function  checkPwd(){
        if($("#repassword").val()!=$("#password").val()){
            layer.alert("两次输入密码不一致！");
            $("#repassword").val("");
        }
    }

    <%
        if (request.getAttribute("msg")!=null){
            %>
        alert("${msg}");
    <%
        }
    %>
</script>

</body>
</html>
