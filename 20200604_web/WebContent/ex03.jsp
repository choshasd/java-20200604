<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mh.org.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<body>
	<%
		Student st1 = new Student();
		st1.setGender("남");
		st1.setStu_number(1);
		st1.setRemark("홍길동");
		
		Student st2 = new Student();
		st2.setGender("여");
		st2.setStu_number(2);
		st2.setRemark("대장금");
		
		Student st3 = new Student();
		st3.setGender("남");
		st3.setStu_number(3);
		st3.setRemark("백길동");
		
		List<Student> als = new ArrayList();
		als.add(0, st1);
		als.add(1, st2);
		als.add(2, st3);
		
		Iterator<Student> itt = als.iterator();
		while(itt.hasNext()){
			System.out.println(itt.next());
		}
		
		List al1 = new ArrayList<>();
		for(Object st : al1){
			st = (Student)st;
		}
		
		%>
<!--Bootstrap -->
<ul class = "list-group">
<%
// 	for(Student student : als){
	for(int i =0;i<als.size(); i++){
		Student student = (Student)als.get(i);	
	
%>
<!--뒤에 success로 배경색 바뀜 Bootstrap-->
	<li class = "list-group-item-success"> 
	<%
	out.println(student+"</br>") ;
	%>
	</li>
<%	
	}
%>
</ul>
</body>
</html>