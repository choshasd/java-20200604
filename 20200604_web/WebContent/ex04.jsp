<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	List<String> list = Arrays.asList("AA","BB","CC");
// 	list.add(0,"DD"); 이러한 형식은 안됨
//  그래서 앞에 List<String> li1 = new ArrayList();로 지정해줘야 됨
	for(String temp : list){
		out.print("temp = "+temp+"</br>");
	}
%>
</body>
</html>