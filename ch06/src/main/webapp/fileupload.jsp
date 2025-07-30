<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>fileupload</title>
		<%--
			내용 : JSP 파일 업로드 실습하기
			
			JSP 파일 업로드 방식
			1. cos.jar 방식
			- MultipartRequest를 이용한 파일 업로드, 가장 많이 알려진 방식
			- 너무 오래된 라이브러리로 버전을 지원하지 않아 최신 JAVA17에서 이슈생김 
			
			
			2. apache-fileupload
			- apache 오픈소스로 제공되는 파일업로드 라이브러리
			- 자바 지원 재단이 javax에서 jakarta로 변경되어 너무 잦은 버전 변경으로 호환성 부족
			
			
			3. WAS의 part
			- Tomcat 9버전부터 지원되는 파일 업로드 방식
			- 업로드 파일을 part 객체로 처리
			
			
			WAS의 getPart 업로드 설정
			- Server > context.xml > <Context allowCasualMultipartParsing="true"> 설정
			- Server > server.xml > 63라인 Connector 태그에 maxPostSize=10485760 설정
			
			
			
			
			
		--%>
	</head>
	<body>
		<h3>파일 업로드</h3>
		
		<form action="/ch06/proc/fileUpload.jsp" method="post" enctype="multipart/form-data">
			<input type="text" name="title" placeholder="파일 제목 입력" /><br/>
			<input type="text" name="name" placeholder="이름 입력" /><br/>
			<input type="file" name="file1" /><br/>
			<input type="submit" value="파일 업로드 전송하기"/>
		</form>
		
		
	
	</body>
</html>