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

<link href="../css/main.css" rel="stylesheet" type="text/css" />
<link href="../css/head.css" rel="stylesheet" type="text/css" />
<link href="../css/main_left.css" rel="stylesheet" type="text/css" />
<link href="../css/help.css" rel="stylesheet" type="text/css" />

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
				<s:form action="insertTeam" method="post" id="insertTeam">
					<table>
						<tr>
							<td><span>球队名:</span></td>
							<td><input type="text" name="teamname" class="input"
								required="required" /></td>
						</tr>
						<tr>
							<td><span>所属地区:</span></td>
							<td><input type="text" name="region" class="input"
								required="required" id="region" /></td>
						</tr>
						<tr>
							<td><span>主教练:</span></td>
							<td><input type="text" name="coach" class="input"
								required="required" id="coach" /></td>
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
