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
<link href="css/selectityCommodity.css" rel="stylesheet" type="text/css" />
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
							<td align="center" style="font-size:24px; color:#666">比赛结算</td>
						</tr>
					</table>
					<br />
					<table cellspacing="0" border="1" class="table1">
					<thead>
						<tr>
							<th>主队</th>
							<th>客队</th>
							<th>比赛时间</th>
							<th>比赛地点</th>
							<th>比分(主队:客队)</th>
							<th>操作</th>
						</tr>
						</thead>
						<s:iterator value="#request.list" var="march" id="march">
							<tr>
								<td align="center"><s:property value="#march.hometeam" /></td>
								<td align="center"><s:property value="#march.visteam" /></td>
								<td align="center"><s:property value="#march.datetime" /></td>
								<td align="center"><s:property value="#march.competition_site" /></td>
								<td align="center"><s:property value="#march.hometeam_score" />:<s:property
										value="#march.visteam_score" /></td>

								<td align="center"><a
									href="login/selectityMarchj.action?march_id=<s:property value="#march.id"/>">结算</a>
									</td>
							</tr>
						</s:iterator>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
