<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title>新用户注册</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="/css/style.css">
<script src="/js/jquery.js"></script>
<script src="/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
	(function($) {
		$(window).load(
				function() {

					$("a[rel='load-content']").click(
							function(e) {
								e.preventDefault();
								var url = $(this).attr("href");
								$.get(url, function(data) {
									$(".content .mCSB_container").append(data);
									$(".content").mCustomScrollbar("scrollTo",
											"h2:last");
								});
							});

					$(".content").delegate(
							"a[href='top']",
							"click",
							function(e) {
								e.preventDefault();
								$(".content").mCustomScrollbar("scrollTo",
										$(this).attr("href"));
							});

				});
	})(jQuery);
</script>

<script type="text/javascript">
		function inputCheck() {
			if (document.getElementById("userName").value=="" || document.getElementById("userName").value == null){
					alert("用户名不能为空！");
					document.getElementById("userName").focus();
					return false;
			}


			if (document.getElementById("userPwd").value=="" || document.getElementById("userPwd").value == null){
					alert("登录密码不能为空！");
					document.getElementById("userPwd").focus();
					return false;
			}

		}
	</script>

</head>
<body>

	<!--header-->
	<header>
		<h1>
			城市交通
		</h1>
		<ul class="rt_nav">
			<li><a href="login.jsp" class="quit_icon">登录</a>
			</li>
		</ul>
	</header>

	<section class="rt_wrap content mCustomScrollbar">
		<div class="rt_content">
			<div class="page_title">
				<h2 class="fl">新用户注册</h2>
				<a class="fr top_rt_btn" onClick="javascript :history.back(1);">返回上一页</a>
			</div>
			<form name="form" action="register"
				method="post" onsubmit="return inputCheck()">
				<ul class="ulColumn2">
					<li><span class="item_name" style="width:120px;">用户姓名：</span>
						<input type="text" name="username" id="userName"
						class="textbox textbox_225" placeholder="请输入用户名" />
					</li>
					<li><span class="item_name" style="width:120px;">昵称：</span>
						<input type="text" name="nickanem" id="nickName"
							   class="textbox textbox_225" placeholder="请输入昵称" />
					</li>

					<li><span class="item_name" style="width:120px;">登陆密码：</span>
						<input type="password" name="userPwd" id="password"
						class="textbox textbox_225" placeholder="请设置登录密码" />
					</li>

					<li><span class="item_name" style="width:120px;"></span> <input
						type="submit" class="link_btn" value="新用户注册" /></li>
				</ul>
			</form>
		</div>
	</section>

</body>
</html>
