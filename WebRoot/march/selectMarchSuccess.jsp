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
					<s:set name="march" value="#request.march" />
					<h2>
						<s:property value="#march.id" />
						的详情信息如下：
					</h2>
					<form action="updateMarch.action" method="post" id="updateMarch">
					<table>
						<tr>
							<th>主队：</th>
							<td><s:textfield name="hometeam" value="%{march.hometeam}" /></td>
						</tr>
						<tr>
							<th>客队：</th>
							<td><s:textfield name="visteam" value="%{march.visteam}"/></td>
						</tr>
						<tr>
							<th>比赛时间：</th>
							<td><s:textfield name="datetime" value="%{march.datetime}"/></td>
						</tr>
						<tr>
							<th>比赛地点：</th>
							<td><s:textfield name="competition_site" value="%{march.competition_site}"/></td>
						</tr>
						<tr>
							<th>比分(主队:客队)：</th>
							<td><s:textfield name="hometeam_score" value="%{march.hometeam_score}" size="2"  disabled="true"/>:
							<s:textfield name="visteam_score" value="%{march.visteam_score}" size="2"  disabled="true"/></td>
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
