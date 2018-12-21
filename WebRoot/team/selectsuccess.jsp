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
					<s:set name="team" value="#request.team" />
					<h2>
						<s:property value="#team.teamname" />
						的详情信息如下：
					</h2>
					<form action="updateTeam.action" method="post" id="updateTeam">
					<table>
						<tr>
							<th>队伍名：</th>
							<td><s:textfield name="teamname" value="%{team.teamname}"/></td>
						</tr>
						<tr>
							<th>所属地区：</th>
							<td><s:textfield name="region" value="%{team.region}"/></td>
						</tr>
						<tr>
							<th>主教练：</th>
							<td><s:textfield name="coach" value="%{team.coach}"/></td>
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
