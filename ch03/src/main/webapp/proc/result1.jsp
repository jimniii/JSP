<%@ page  contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// 전송 데이터 수신
	String queryString = request.getQueryString();
	String uid = request.getParameter("uid");
	String name = request.getParameter("name");
	String age = request.getParameter("age");

	
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>결과페이지1</title>
	</head>
	<body>
		<h3>요청 결과(전송 데이터 수신)</h3>
		
		<p>
			쿼리 스트링: <%= queryString %><br/>
			아이디: <%= uid %><br/>
			이름: <%= name %><br/>
			나이: <%= age %><br/>
			
		
		</p>
		<a href="../1_requests.jsp">뒤로가기</a>
		
	</body>
</html>