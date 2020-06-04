
<%@page import="org.omg.IOP.ExceptionDetailMessage"%>
<%-- <%@page import = "java.sql.*" %> --%> <%-- java.sql 전체부분 임포트 --%>
<%@page import="com.mh.org.MyOracle" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	MyOracle mo = new MyOracle();
	String msg = mo.doUpdate();
	out.println(msg);
%>
</body>
</html>