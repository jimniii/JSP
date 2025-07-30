<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>



<%
	// 전송데이터 수신
	String seq = request.getParameter("seq");
	
	String host = "jdbc:oracle:thin:@localhost:1521:xe";
	String user = "jimin7904";
	String pass = "1234";

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn = DriverManager.getConnection(host, user, pass);
				
		PreparedStatement psmt = conn.prepareStatement("DELETE FROM USER6 WHERE SEQ =?");
		psmt.setString(1,seq);

		
		psmt.executeUpdate();
		
		psmt.close();
		conn.close();
		
		
	} catch (Exception e){
		e.printStackTrace();
		
		
	}
	
	// 목록이동
	response.sendRedirect("./list.jsp");




%>