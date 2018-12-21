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
				<s:form action="insertMarch" method="post" id="insertMarch">
					<table>
						<tr>
							<td><span>主队:</span></td>
							<td><input type="text" name="hometeam" class="input" required="required"/></td>
						</tr>
						<tr>
							<td><span>客队:</span></td>
							<td><input type="text" name="visteam" class="input" required="required"/></td>
						</tr>
						<tr>
							<td><span>比赛地点:</span></td>
							<td><input type="text" name="competition_site" class="input" required="required"/></td>
						</tr>
						<tr>
							<td><span>比赛时间:</span></td>
							<td><input type="text" name="datetime" class="input" required="required"/></td>
						</tr>
						<tr>
							<td><span>比分(主队:客队):</span></td>
							<td><input type="text" name="hometeam_score" class="input" value="0" size="2" disabled="true"/>:
							<input type="text" name="visteam_score" class="input" value="0" size="2" disabled="true"/></td>
						</tr>
						<!-- <tr>
                           <td>比賽情況</td>
                          <td><s:radio name="score" list="{'主队胜','主队负','平','未知'}"/></td>
                        </tr> -->
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
