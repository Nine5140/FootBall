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
<link href="css/selectsuccess.css" rel="stylesheet"
	type="text/css" />
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
				<div id="selectsuccess">
					<s:set name="goalsituation" value="#request.goalsituation" />
					<h2>
						<s:property value="#goalsituation.id" />
						的详情信息如下：
					</h2>
					<form action="updateGoalsituation.action" method="post" id="updateGoalsituation">
					<table>
						<tr>
							<th>进球场次：</th>
							<td><s:textfield name="matchsession" value="%{goalsituation.matchsession}"/></td>
						</tr>
						<tr>
							<th>进球队员：</th>
							<td><s:textfield name="playername" value="%{goalsituation.playername}"/></td>
						</tr>
						<tr>
							<th>进球日期：</th>
							<td><s:textfield name="goaldate"  value="%{goalsituation.goaldate}"/></td>
						</tr>
						<tr>
							<th>进球时间：</th>
							<td><s:textfield name="goaltime" value="%{goalsituation.goaltime}"/></td>
						</tr>
						<tr>
							<th>进球方式：</th>
							<td><s:select id="way" name="way"
									list="{'射门','点球','任意球'}" headerKey="" headerValue="---请选择---"/>
							</td>
						</tr>
						<tr>
						   <td><input type="submit" value="确认"> </td>
						</tr>
					</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
