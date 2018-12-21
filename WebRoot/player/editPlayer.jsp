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
<link href="css/selectsuccess.css" rel="stylesheet" type="text/css" />
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
					<s:set name="player" value="#request.player" />
					<s:set name="list" value="#request.list"/>
					<h2>
						<s:property value="#player.player_name" />
						的详情信息如下：
					</h2>
					<form action="updatePlayer.action" method="post" id="updatePlayer">
						<table>
							<tr>
								<th>所属队伍:</th>
								<td><s:select name="team.id" list="list" listKey="id"
										listValue="teamname" headerKey="id" headerValue="%{#request.player.team.teamname}">
										</s:select></td>
							</tr>
							<tr>
								<th>球员姓名:</th>
								<td><s:textfield name="player_name"
										value="%{#request.player.player_name}" /></td>
							</tr>
							<tr>
								<th>球员号码:</th>
								<td><s:textfield name="player_num"
										value="%{#request.player.player_num}" /></td>
							</tr>
							<tr>
								<th>球员位置:</th>
								<td><s:textfield name="position"
										value="%{#request.player.position}" /></td>
							</tr>
							<tr>
							<td>球员状态:</td>
							<td><s:select id="state" name="state"
									list="{'首发','替补'}" headerKey="" headerValue="%{#request.player.state}"/>
							<!--<s:select id="position" name="position"
									list="{'替补','首发'}" />--></td>
						</tr>
						<tr>
								<th>球员身高(cm):</th>
								<td><s:textfield name="player_height"
										value="%{#request.player.player_height}" /></td>
							</tr>
							<tr>
								<th>球员体重(Kg):</th>
								<td><s:textfield name="player_weight"
										value="%{#request.player.player_weight}" /></td>
							</tr>
							<tr>
								<th>球员生日:</th>
								<td><s:textfield name="player_bir"
										value="%{#request.player.player_bir}" /></td>
							</tr>
							<tr>
								<th>效力俱乐部:</th>
								<td><s:textfield name="club"
										value="%{#request.player.club}" /></td>
							</tr>
							<tr>
								<td><input type="submit" value="确认"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
