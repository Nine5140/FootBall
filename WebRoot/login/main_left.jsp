<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			pageContext.setAttribute("basePath",basePath);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<div id="main_left_page">
	<ul>
		<li><a href="${pageScope.basePath}/team/insertTeam.jsp">添加球队信息</a></li>
		<li><a href="selectTeam.action">球队信息查询</a></li>
	</ul>
	<ul>
		<li><a href="${pageScope.basePath}saveUI.action">添加球员信息</a></li>
		<li><a href="${pageScope.basePath}selectPlayerAll.action">球员信息管理</a></li>
	</ul>
	<ul>
		<li><a href="${pageScope.basePath}/march/insertMarch.jsp">添加赛程</a></li>
		<li><a href="${pageScope.basePath}/selectMarchAll.action">赛程管理</a></li>
		<li><a href="${pageScope.basePath}/selectMarch.action">比赛结算</a></li>
	</ul>
	<ul>
		<li><a href="${pageScope.basePath}/goalsituation/insertGoalsituation.jsp">添加进球</a></li>
		<li><a href="selectGoalsituationAll.action">进球情况</a></li>
	</ul>
</div>