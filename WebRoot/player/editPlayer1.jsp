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
				<s:set name="player" value="#request.player" />
				<s:form action="insertPlayer" method="post" id="insertPlayer">
					<table>
						
						<tr>
							<td><span>球员姓名:</span></td>
							<td><input type="text" name="player_name" class="input"
								required="required" value="${player.player_name}"/></td>
						</tr>
						<tr>
							<td><span>球员号码:</span></td>
							<td><s:textfield name="teamname" value="#{player.player_num}"/></td>
						</tr>
						<tr>
							<td><span>球员位置:</span></td>
							<td><s:select id="position" name="position"
									list="{'门将','前锋','中场','后卫'}" /></td>
						</tr>
						<tr>
							<td><span>球员状态:</span></td>
							<td><s:radio list="{'替补','首发'}" name="state"></s:radio> <!--<s:select id="position" name="position"
									list="{'替补','首发'}" />--></td>
						</tr>
						<tr>
							<td><span>球员身高(cm):</span></td>
							<td><input type="text" name="player_height" class="input"
								required="required" id="player_height" /></td>
						</tr>
						<tr>
							<td><span>球员体重(Kg):</span></td>
							<td><input type="text" name="player_weight" class="input"
								required="required" id="player_weight" /></td>
						</tr>
						<tr>
							<td><span>球员生日:</span></td>
							<td><input type="text" name="player_bir" class="input"
								required="required" id="player_bir" /></td>
						</tr>
						<tr>
							<td><span>效力俱乐部:</span></td>
							<td><input type="text" name="club" class="input"
								required="required" id="club" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" value="确定" id="submit" /></td>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>
