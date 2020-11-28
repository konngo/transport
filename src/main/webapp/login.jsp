<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String msg = (String) request.getAttribute("msg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>后台登录</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style>
body {
	height: 100%;
	background: #16a085;
	overflow: hidden;
}

canvas {
	z-index: -1;
	position: absolute;
}
</style>
<script src="js/jquery.js"></script>
<script src="js/verificationNumbers.js"></script>
<script src="js/Particleground.js"></script>
<script>
	$(document).ready(function() {
		$('body').particleground({
			dotColor : '#5cbdaa',
			lineColor : '#5cbdaa'
		});
		createCode();
	});
</script>

<script type="text/javascript">

		function inputCheck() {
			if (document.getElementById("userName").value=="" || document.getElementById("userName").value == null){
					alert("请输入账号！");
					document.getElementById("userName").focus();
					return false;
			}
			if (document.getElementById("userPwd").value=="" || document.getElementById("userPwd").value == null){
					alert("请输入密码");
					document.getElementById("userPwd").focus();
					return false;
			}

		}
	</script>

	<script type="text/javascript">
		function outputMsg() {
			if (msg != null && msg != ""){
					alert(msg);
			}
		}
	</script>

</head>
<body>
	<form name="form" action="/login" method="post"
		onsubmit="return inputCheck()">
		<dl class="admin_login">
			<dt>
				<strong>用户登录</strong> <em>User Login</em>
			</dt>
			<dd class="user_icon">
				<input type="text" placeholder="账号" id="userName" name="username"
					class="login_txtbx" />
			</dd>
			<dd class="pwd_icon">
				<input type="password" placeholder="密码" id="userPwd" name="password"
					class="login_txtbx" />
			</dd>


			<dd>
				<input type="submit" value="立即登录" class="submit_btn" />
			</dd>


			<h1></h1>
			<dd class="center">
				<a a href="/register.jsp">新用户注册</a>
			</dd>
			<dd>
				<p>© 2020 版权所有</p>
				<p>-</p>
			</dd>
		</dl>
	</form>
</body>
</html>

<script> 
  var errori ='<%=request.getParameter("error")%>';
  if(errori=='yes'){
   alert("登录失败!");
  }
</script>
