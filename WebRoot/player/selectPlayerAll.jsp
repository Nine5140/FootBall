<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="${pageScope.basePath}/css/main.css" rel="stylesheet"
	type="text/css" />
<link href="${pageScope.basePath}/css/head.css" rel="stylesheet"
	type="text/css" />
<link href="${pageScope.basePath}/css/main_left.css" rel="stylesheet"
	type="text/css" />
<link href="${pageScope.basePath}/css/help.css" rel="stylesheet"
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
			<%--<jsp:include page="${pageScope.basePath}login/head.jsp"></jsp:include>--%>
			<jsp:include page="../login/head.jsp"></jsp:include>
		</div>
		<div id="content">
			<div id="main_left">
				<%--<jsp:include page="${pageScope.basePath}login/main_left.jsp" />--%>
				<jsp:include page="../login/main_left.jsp" />
			</div>
			<%--<%=request.getContextPath()--%>

			<div id="main_right">
				<body>
					<table border="0" width="1000px">
						<tr>
							<td align="center" style="font-size:24px; color:#666">球员管理</td>
						</tr>
					</table>
					<br />
					<table cellspacing="0" border="1" class="table1">
						<thead>
							<tr>
								<td align="center">所属队伍</td>
								<td align="center">球员姓名</td>
								<td align="center">球员号码</td>
								<td align="center">球员位置</td>
								<td align="center">球员状态</td>
								<td align="center">球员身高(cm)</td>
								<td align="center">球员体重(Kg)</td>
								<td align="center">球员生日</td>
								<td align="center">所属俱乐部</td>

								<td align="center">编辑</td>
								<td align="center">删除</td>
							</tr>
						</thead>
						<tbody>
							<s:iterator value="#request.list" var="player" id="player">
								<tr>
									<td align="center"><s:property value="#player.team.teamname" /></td>
									<td align="center"><s:property value="#player.player_name" /></td>
									<td align="center"><s:property value="#player.player_num" /></td>
									<td align="center"><s:property value="#player.position" /></td>
									<td align="center"><s:property value="#player.state" /></td>
									<td align="center"><s:property value="#player.player_height" /></td>
									<td align="center"><s:property value="#player.player_weight" /></td>
									<td align="center"><s:property value="#player.player_bir" /></td>
									<td align="center"><s:property value="#player.club" /></td>
									
									<td align="center"><a
										href="${pageScope.basePath}selectPlayer.action?player_id=<s:property value="#player.player_id"/>"><img
											src="images/edit.png" /></a></td>
									<td align="center"><a
										href="${pageScope.basePath}deletePlayer.action?player_id=<s:property value="#player.player_id"/>"><img
											src="images/trash.gif" /></a></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
			</div>
		</div>
	</div>
</body>
</html>
