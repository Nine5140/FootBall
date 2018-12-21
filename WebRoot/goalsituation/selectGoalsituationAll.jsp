<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="css/main.css" rel="stylesheet" type="text/css" />
<link href="css/head.css" rel="stylesheet" type="text/css" />
<link href="css/main_left.css" rel="stylesheet" type="text/css" />
<link href="css/selectityCommodity.css" rel="stylesheet"
	type="text/css" />
	<style type="text/css">
.table1 {
	border: 1px solid #ddd;
	width: 1000px;
}

thead {
	background-color: lightblue;
}
</style>
</head>

<body>
	<div id="main_page">
		<div id="head">
			<jsp:include page="../login/head.jsp" />
		</div>
		<div id="content">
			<div id="main_left">
				<jsp:include page="../login/main_left.jsp" />
			</div>
			<div id="main_right">
				<div id="selectity">
				<table border="0" width="1000px">
						<tr>
							<td align="center" style="font-size:24px; color:#666">进球情况</td>
						</tr>
					</table>
					<table cellspacing="0" border="1" class="table1">
					<thead>
						<tr>
						<th>序号:</th>
							<th>进球场次:</th>
							<th>进球队员</th>
							<th>进球日期</th>
							<th>进球时间</th>
							<th>进球方式</th>
							<th>操作</th>
						</tr>
						</thead>
						<s:iterator value="#request.list" var="goalsituation" id="goalsituation">
							<tr>
							<td><s:property value="#goalsituation.id"   /></td>
								<td align="center"><s:property value="#goalsituation.matchsession"   /></td>
								<td align="center"><s:property value="#goalsituation.playername" /></td>
								<td align="center"><s:property value="#goalsituation.goaldate" /></td>
								<td align="center"><s:property value="#goalsituation.goaltime" /></td>
								<td align="center"><s:property value="#goalsituation.way" /></td>
								<td align="center"><a
									href="login/selectityGoalsituation.action?goalsituation_id=<s:property value="#goalsituation.id"/>">修改</a>
									<a
									href="login/deleteGoalsituation.action?goalsituation_id=<s:property value="#goalsituation.id"/>">删除</a></td>
							</tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
