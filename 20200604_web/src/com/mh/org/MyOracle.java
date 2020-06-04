package com.mh.org;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class MyOracle {
	public String doUpdate() {
		System.out.println("doUpdate");
		
		Connection conn = null; 			// DB 연결을 유지하는 객체
		PreparedStatement ps = null; 	// SQL문 작성해서 들고있는 객체
		
		try{
			// Class ojdbc6.	jar 파일안에 Driver 파일 찾기
			Class.forName("oracle.jdbc.driver.OracleDriver");
			// DB 연결 실패시 catch문으로 빠진다
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "1234");
			ps = conn.prepareCall("update student set stu_number = 3");
			// 원래 실행하게 되면 오라클에 auto commit인데 conn.setAutoCommit 으로 설정가능
			ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return "정상적으로 업데이트";
	}
}
