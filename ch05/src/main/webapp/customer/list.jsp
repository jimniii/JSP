
<%@page import="vo.CustomerDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%

	List<CustomerDTO> customers = new ArrayList<>();

	try{
		// 자바 기본 환경객체 검색(WAS 환경)
		Context ctx =(Context) new InitialContext().lookup("java:comp/env");
		DataSource ds =(DataSource) ctx.lookup("jdbc/jimin7904"); 
	
		
		Connection conn = ds.getConnection();
		Statement stmt = conn.createStatement();
		
		ResultSet rs = stmt.executeQuery("SELECT * FROM CUSTOMER");
		
		
		while(rs.next()){
			
			CustomerDTO dto = new CustomerDTO();
			dto.setCid(rs.getString(1));
			dto.setName(rs.getString(2));
			dto.setHp(rs.getString(3));
			dto.setAddress(rs.getString(4));
			dto.setRdate(rs.getString(5));
			
			
			customers.add(dto);
		}
		
		
		// 커넥션 반납
		rs.close();
		stmt.close();
		conn.close();
		
		
	} catch(Exception e){
		e.printStackTrace();
	}


	

%>




<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>customer::list</title>
	</head>
	<body>
		<h3>Customer 목록</h3>
		
		<a href="../dbcp.jsp">처음으로</a>
		<a href="./register.jsp">등록하기</a>
		
		<table border="1">
			<tr> <!--  1행 5열이니까 아이디/이름/휴대폰/나이/관리 이렇게 나옴  -->
				<th>아이디</th>
				<th>이름</th>
				<th>휴대폰</th>
				<th>주소</th>
				<th>등록일</th>
				<th>관리</th>
			</tr>
			<% for(CustomerDTO customer : customers){ %>
			
			<tr>
				<td><%= customer.getCid() %></td>
				<td><%= customer.getName() %></td>
				<td><%= customer.getHp() %></td>
				<td><%= customer.getAddress() %></td>
				<td><%= customer.getRdate().substring(0,10)%></td>
				<td>
					<!-- 수정하고자 하는 사용자 아이디를 modify.jsp로 전송 -->
					<a href="/ch05/customer/modify.jsp?cid=<%= customer.getCid() %>">수정</a>
					<a href="#">삭제</a>
				</td>
			</tr>
			<%} %>

		</table>		
	</body>
</html>