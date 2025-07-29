<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%
	// 전송데이터 수신
	String NAME = request.getParameter("name");
	
	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "jimin7904";
	String pass = "1234";

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
				
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER5 WHERE NAME =?");
		psmt.setString(1,NAME);
		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		
	} catch (Exception e){
		e.printStackTrace();
		
		
	}
	
	// 목록이동
	response.sendRedirect("./list.jsp");




%>