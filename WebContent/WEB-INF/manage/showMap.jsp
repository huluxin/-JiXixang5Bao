<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Amaze UI Admin index Examples</title>
<meta name="description" content="这是一个 index 页面">
<meta name="keywords" content="index">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="icon" type="image/png" href="<%=path%>/assets/i/favicon.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=path%>/assets/i/app-icon72x72@2x.png">
<meta name="apple-mobile-web-app-title" content="Amaze UI" />
<script src="<%=path%>/assets/js/echarts.min.js"></script>
<link rel="stylesheet" href="<%=path%>/assets/css/amazeui.min.css" />
<link rel="stylesheet"
	href="<%=path%>/assets/css/amazeui.datatables.min.css" />
<link rel="stylesheet" href="<%=path%>/assets/css/app.css">
<script src="<%=path%>/assets/js/jquery.min.js"></script>
<style type="text/css">
#canvas {
	border: 1px solid #ADACB0;
	display: block;
	margin: 20px auto;
}
</style>
</head>

<body data-type="widgets">
	<script src="<%=path%>/assets/js/theme.js"></script>
	<div class="am-g tpl-g">
		<!-- 头部 -->
		<header>
			<!-- logo -->
			<div class="am-fl tpl-header-logo">
				<a href="javascript:;"><img src="<%=path%>/assets/img/logo.png"
					alt=""></a>
			</div>
			<!-- 右侧内容 -->
			<div class="tpl-header-fluid">
				<!-- 侧边切换 -->
				<div class="am-fl tpl-header-switch-button am-icon-list">
					<span> </span>
				</div>
				<!-- 搜索 -->
				<div class="am-fl tpl-header-search">
					<form class="tpl-header-search-form" action="javascript:;">
						<button class="tpl-header-search-btn am-icon-search"></button>
						<input class="tpl-header-search-box" type="text"
							placeholder="搜索内容...">
					</form>
				</div>
				<!-- 其它功能-->
				<div class="am-fr tpl-header-navbar">
					<ul>
						<!-- 欢迎语 -->
						<li class="am-text-sm tpl-header-navbar-welcome"><a
							href="javascript:;">欢迎你, <span>Amaze UI</span>
						</a></li>

						<!-- 新邮件 -->
						<li class="am-dropdown tpl-dropdown" data-am-dropdown><a
							href="javascript:;"
							class="am-dropdown-toggle tpl-dropdown-toggle"
							data-am-dropdown-toggle> <i class="am-icon-envelope"></i> <span
								class="am-badge am-badge-success am-round item-feed-badge">4</span>
						</a> <!-- 弹出列表 -->
							<ul class="am-dropdown-content tpl-dropdown-content">
								<li class="tpl-dropdown-menu-messages"><a
									href="javascript:;"
									class="tpl-dropdown-menu-messages-item am-cf">
										<div class="menu-messages-ico">
											<img src="<%=path%>/assets/img/user04.png" alt="">
										</div>
										<div class="menu-messages-time">3小时前</div>
										<div class="menu-messages-content">
											<div class="menu-messages-content-title">
												<i class="am-icon-circle-o am-text-success"></i> <span>夕风色</span>
											</div>
											<div class="am-text-truncate">Amaze UI 的诞生，依托于 GitHub
												及其他技术社区上一些优秀的资源；Amaze UI 的成长，则离不开用户的支持。</div>
											<div class="menu-messages-content-time">2016-09-21 下午
												16:40</div>
										</div>
								</a></li>

								<li class="tpl-dropdown-menu-messages"><a
									href="javascript:;"
									class="tpl-dropdown-menu-messages-item am-cf">
										<div class="menu-messages-ico">
											<img src="<%=path%>/assets/img/user02.png" alt="">
										</div>
										<div class="menu-messages-time">5天前</div>
										<div class="menu-messages-content">
											<div class="menu-messages-content-title">
												<i class="am-icon-circle-o am-text-warning"></i> <span>禁言小张</span>
											</div>
											<div class="am-text-truncate">为了能最准确的传达所描述的问题，
												建议你在反馈时附上演示，方便我们理解。</div>
											<div class="menu-messages-content-time">2016-09-16 上午
												09:23</div>
										</div>
								</a></li>
								<li class="tpl-dropdown-menu-messages"><a
									href="javascript:;"
									class="tpl-dropdown-menu-messages-item am-cf"> <i
										class="am-icon-circle-o"></i> 进入列表…
								</a></li>
							</ul></li>

						<!-- 新提示 -->
						<li class="am-dropdown" data-am-dropdown><a
							href="javascript:;" class="am-dropdown-toggle"
							data-am-dropdown-toggle> <i class="am-icon-bell"></i> <span
								class="am-badge am-badge-warning am-round item-feed-badge">5</span>
						</a> <!-- 弹出列表 -->
							<ul class="am-dropdown-content tpl-dropdown-content">
								<li class="tpl-dropdown-menu-notifications"><a
									href="javascript:;"
									class="tpl-dropdown-menu-notifications-item am-cf">
										<div class="tpl-dropdown-menu-notifications-title">
											<i class="am-icon-line-chart"></i> <span> 有6笔新的销售订单</span>
										</div>
										<div class="tpl-dropdown-menu-notifications-time">12分钟前
										</div>
								</a></li>
								<li class="tpl-dropdown-menu-notifications"><a
									href="javascript:;"
									class="tpl-dropdown-menu-notifications-item am-cf">
										<div class="tpl-dropdown-menu-notifications-title">
											<i class="am-icon-star"></i> <span> 有3个来自人事部的消息</span>
										</div>
										<div class="tpl-dropdown-menu-notifications-time">30分钟前
										</div>
								</a></li>
								<li class="tpl-dropdown-menu-notifications"><a
									href="javascript:;"
									class="tpl-dropdown-menu-notifications-item am-cf">
										<div class="tpl-dropdown-menu-notifications-title">
											<i class="am-icon-folder-o"></i> <span> 上午开会记录存档</span>
										</div>
										<div class="tpl-dropdown-menu-notifications-time">1天前</div>
								</a></li>


								<li class="tpl-dropdown-menu-notifications"><a
									href="javascript:;"
									class="tpl-dropdown-menu-notifications-item am-cf"> <i
										class="am-icon-bell"></i> 进入列表…
								</a></li>
							</ul></li>

						<!-- 退出 -->
						<li class="am-text-sm"><a href="javascript:;"> <span
								class="am-icon-sign-out"></span> 退出
						</a></li>
					</ul>
				</div>
			</div>

		</header>
		<!-- 风格切换 -->
		<div class="tpl-skiner">
			<div class="tpl-skiner-toggle am-icon-cog"></div>
			<div class="tpl-skiner-content">
				<div class="tpl-skiner-content-title">选择主题</div>
				<div class="tpl-skiner-content-bar">
					<span class="skiner-color skiner-white" data-color="theme-white"></span>
					<span class="skiner-color skiner-black" data-color="theme-black"></span>
				</div>
			</div>
		</div>
		<!-- 侧边导航栏 -->
		<div class="left-sidebar">
			<!-- 用户信息 -->
			<div class="tpl-sidebar-user-panel">
				<div class="tpl-user-panel-slide-toggleable">
					<div class="tpl-user-panel-profile-picture">
						<img src="<%=path%>/assets/img/user04.png" alt="">
					</div>
					<span class="user-panel-logged-in-text"> <i
						class="am-icon-circle-o am-text-success tpl-user-panel-status-icon"></i>
						禁言小张
					</span> <a href="javascript:;" class="tpl-user-panel-action-link"> <span
						class="am-icon-pencil"></span> 账号设置
					</a>
				</div>
			</div>

			<!-- 菜单 -->
			<ul class="sidebar-nav">
				<li class="sidebar-nav-heading">Components <span
					class="sidebar-nav-heading-info"> 附加组件</span></li>
				<li class="sidebar-nav-link"><a href="index.html"> <i
						class="am-icon-home sidebar-nav-link-logo"></i> 首页
				</a></li>
				<li class="sidebar-nav-link"><a href="tables.html"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 表格
				</a></li>
				<li class="sidebar-nav-link"><a href="calendar.html"> <i
						class="am-icon-calendar sidebar-nav-link-logo"></i> 日历
				</a></li>
				<li class="sidebar-nav-link"><a href="form.html" class="active">
						<i class="am-icon-wpforms sidebar-nav-link-logo"></i> 表单

				</a></li>
				<li class="sidebar-nav-link"><a href="chart.html"> <i
						class="am-icon-bar-chart sidebar-nav-link-logo"></i> 图表

				</a></li>

				<li class="sidebar-nav-heading">Page<span
					class="sidebar-nav-heading-info"> 常用页面</span></li>
				<li class="sidebar-nav-link"><a href="javascript:;"
					class="sidebar-nav-sub-title"> <i
						class="am-icon-table sidebar-nav-link-logo"></i> 数据列表 <span
						class="am-icon-chevron-down am-fr am-margin-right-sm sidebar-nav-sub-ico"></span>
				</a>
					<ul class="sidebar-nav sidebar-nav-sub">
						<li class="sidebar-nav-link"><a href="table-list.html"> <span
								class="am-icon-angle-right sidebar-nav-link-logo"></span> 文字列表
						</a></li>

						<li class="sidebar-nav-link"><a href="table-list-img.html">
								<span class="am-icon-angle-right sidebar-nav-link-logo"></span>
								图文列表
						</a></li>
					</ul></li>
				<li class="sidebar-nav-link"><a href="sign-up.html"> <i
						class="am-icon-clone sidebar-nav-link-logo"></i> 注册 <span
						class="am-badge am-badge-secondary sidebar-nav-link-logo-ico am-round am-fr am-margin-right-sm">6</span>
				</a></li>
				<li class="sidebar-nav-link"><a href="login.html"> <i
						class="am-icon-key sidebar-nav-link-logo"></i> 登录
				</a></li>
				<li class="sidebar-nav-link"><a href="404.html"> <i
						class="am-icon-tv sidebar-nav-link-logo"></i> 404错误
				</a></li>

			</ul>
		</div>

		<!-- 内容区域 -->
		<div class="tpl-content-wrapper">



			<div class="row-content am-cf">


				<div class="row">

					<div class="am-u-sm-12 am-u-md-12 am-u-lg-12">
						<div class="widget am-cf">
							<div class="widget-head am-cf">
								<div class="widget-title am-fl">总车位:${allPark};已占用车位:${bePark}</div>
								<div class="widget-function am-fr">
									<a href="javascript:;" class="am-icon-cog"></a>
								</div>
							</div>

									<c:if test="${list!=null}">
 
<canvas id="canvas" width="800" height="450"> 你的浏览器还不支持canvas</canvas>
							
									</c:if>
								
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	<script src="<%=path%>/assets/js/amazeui.min.js"></script>
	<script src="<%=path%>/assets/js/amazeui.datatables.min.js"></script>
	<script src="<%=path%>/assets/js/dataTables.responsive.min.js"></script>
	<script src="<%=path%>/assets/js/app.js"></script>
	<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
	<script type="text/javascript">
		function addRule() {
			$("form").submit();
		}
	</script>
</body>
<script type="text/javascript">
 
var canvas = document.getElementById("canvas");
var context = canvas.getContext("2d");


<c:forEach items="${list}" var="type">
/* console.log("${type.getPrefix()}"); */

    context.rect(60*"${type.getParkX()}",30*"${type.getParkY()}",60,30);

context.stroke();
 
/*判断是否有车停  */
<c:if test="${type.getCarId()!=''}">
console.log("${type.getPrefix()}");
context.fillStyle="#F5270B";
context.fillRect(60*"${type.getParkX()}",30*"${type.getParkY()}",60,30);
context.fillStyle="#0F0F0F";
context.fillText("${type.getCarNum()}", 53*"${type.getParkX()}"+20,33*"${type.getParkY()}"+10);
 

</c:if>


<c:if test="${type.getCarId()==''}">
/* console.log("${type.getPrefix()}"); */
context.fillStyle="#00CD00";
context.fillRect(60*"${type.getParkX()}",30*"${type.getParkY()}",60,30);
context.fillStyle="#000000";
context.fillText("${type.getPrefix()}${type.getParkNum()}  ", 60*"${type.getParkX()}"+20,30*"${type.getParkY()}"+10);

</c:if>
 
/* context.rect(150,50,100,50); 
 */

</c:forEach>

 
 /* 获取该点的位置，触发事件 */
 canvas.onclick=function(e){//给canvas添加点击事件
    e=e||event;//获取事件对象
    //获取事件在canvas中发生的位置
    
   /*  var x=e.clientX-canvas.offsetLeft;
    var y=e.clientY-canvas.offsetTop; */
    //1
    var rect = canvas.getBoundingClientRect();
    //2
    var x = e.clientX - rect.left * (canvas.width / rect.width);
    var y = e.clientY - rect.top * (canvas.height / rect.height);
    
    console.log(x);
    console.log(y);
    //如果事件位置在矩形区域中
   /*  if(x/100>=1&&x/2<=2+100&&y/50>=1&&y/50<=2)
    {
        window.open("www.baidu.com");//打开指定链接
    }  */
    
  /*  (x/100) */
 document.getElementById("x").value= (x);
 document.getElementById("y").value= (y);  
 /* console.log( document.getElementById("x").value);  */
  document.getElementById("form").submit(); 
    
} 

</script>
</html>