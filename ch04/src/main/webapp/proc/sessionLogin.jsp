<%@page import="ch04.UserVO"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%

	// 전송 데이터 수신 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String auto = request.getParameter("auto");
	
	
	System.out.println("id: "+id);
	System.out.println("pw: "+pw);
	System.out.println("auto: "+auto);
	
	
	// 데이터베이스 사용자 조회 후 사용자객체 생성
	UserVO vo = null;
	
	if(id.equals("abc123") && pw.equals("1234")){
		vo = new UserVO();
		vo.setId(id);
		vo.setPw(pw);
		vo.setName("김유신");
		vo.setAge(23);	
	}

		

	
	// abc123, 1234 회원 간주
	if(vo != null){
		
		// 자동 로그인 처리
		if(auto!=null){
			
			// 사용자 id로 auto 쿠키 생성 
			Cookie autoCookie = new Cookie("auto",id);
			autoCookie.setMaxAge(60*60*24*7); // 7일 !! 
			autoCookie.setPath("/"); // 모든 경로에서 쿠키 유효(사용) 
			
			response.addCookie(autoCookie);
			
			
		}
		
		// 사용자가 회원이면 세션에 사용자 객체 저장
		session.setAttribute("sessUser", vo);
		
		// 리다이렉트(페이지 이동)
		response.sendRedirect("./sessionSuccess.jsp");
		
	} else{
		// 사용자가 회원이 아니면 
		response.sendRedirect("../session.jsp");
		
	}
	



%>
























