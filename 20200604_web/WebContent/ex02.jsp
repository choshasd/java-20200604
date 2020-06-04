<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.mh.org.Box" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// T -> String 
	Box<String> box = new Box();
	box.seto("문자열");
	
	String outputBox = box.geto();
	out.println("outputBox = "+outputBox+"<br>");
	
	// T -> Integer
	Box<Integer> box2 = new Box();
	box2.seto(123);
	
	Integer outputBox2 = box2.geto();
	out.println("정수열 = "+outputBox2);
%>
</body>
</html>