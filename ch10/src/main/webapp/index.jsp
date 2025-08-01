<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
		<!-- 
		JSP 로그와 배포 실습
		
		
		
		로그
		- 시스템의 실행과정 및 서비스 개선을 위한 작업ㅂ
		- 로그단계별 기록을 통해 서비스 개선
		
		
		라이브러리
		- logback-classic-1.5.18.jar
		- logback-core-1.5.18.jar
		- slf4j-api-2.0.17.jar
		
		로그 설정
		- WEB-INF > Classes 폴더 생성 > logback.xml 파일생성
		- logback 홈페이지 > document > 설정 xml 복사 
		
		
		배포
		- 이클립스 프로젝트 > export > war 생성
		- GGG/apache-tomcat-10.1.43\bin\startup.bat 실행
		- GGG/apache-tomcat-10.1.43\webapps폴더에 배포파일(ch10.war)업로드 후 Deploy 확인 후 브라우저 확인
		
		
		 -->
	</head>
	<body>
		<h3>프로젝트 로그와 배포</h3>
		
		<h4>Shop</h4>
		<a href="/ch10/shop/customer/list.do">CUSTOMER CRUD</a>

		<h4>College</h4>
		<a href="/ch10/college/student/list.do">Student CRUD</a>		
		
		<h4>Library</h4>
		<a href="/ch10/library/book/list.do">Library CRUD</a>
		
		
		
	</body>
</html>

























