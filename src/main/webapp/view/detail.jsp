<%@page import="com.ict.db.DAO"%>
<%@page import="com.ict.db.VO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
	String idx = request.getParameter("idx");
	VO vo = DAO.getInstance().getDetail(idx);
	pageContext.setAttribute("vo2", vo);
	//페이지 이동하면 request정보를 그대로 사용 하려면 forward사용해야함.
	
%>
<jsp:forward page="onelist.jsp"/>