<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>欢迎进入足球管理系统</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="${pageScope.basePath}/css/main.css" rel="stylesheet" type="text/css" />
<link href="${pageScope.basePath}/css/head.css" rel="stylesheet" type="text/css" />
<link href="${pageScope.basePath}/css/main_left.css" rel="stylesheet" type="text/css" />
<link href="${pageScope.basePath}/css/help.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="main_page">
		<div id="head">
			<jsp:include page="head.jsp" />
		</div>
		<div id="content">
			<div id="main_left">
				<jsp:include page="main_left.jsp" />
			</div>
			<div id="main_right">
				<jsp:include page="help.jsp" />
			</div>
		</div>
	</div>
</body>
</html>
