<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	pageContext.setAttribute("basePath", basePath);
%>

<!DOCTYPE >
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
				<s:form action="insertGoalsituation" method="post"
					id="insertGoalsituation">
					<table>
						<tr>
							<td><span>进球场次:</span></td>
							<td><input type="text" name="matchsession" class="input"
								required="required" /></td>
						</tr>
						<tr>
							<td><span>进球队员:</span></td>
							<td><input type="text" name="playername" class="input"
								required="required" id="playername" /></td>
						</tr>
						<tr>
							<td><span>进球日期:</span></td>
							<td><input type="date" name="goaldate" class="input"
								required="required" id="goaldate" /></td>
						</tr>
						<tr>
							<td><span>进球时间:</span></td>
							<td><input type="time" name="goaltime" class="input"
								required="required" id="goaltime" /></td>
						</tr>
						<tr>
							<td>进球方式:</td>
							<td><s:select id="way" name="way" list="{'射门','点球','任意球'}"
									headerKey="" headerValue="---请选择---" /></td>
						</tr>
						<tr>
							<td colspan="2"><input type="submit" id="submit" value="確定" /></td>
						</tr>
					</table>
				</s:form>
			</div>
		</div>
	</div>
</body>
</html>
