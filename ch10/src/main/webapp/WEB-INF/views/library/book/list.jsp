<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>library-Book</title>
	</head>
	<body>
		<h3>library-Book 목록</h3>
		
		<a href="/ch10">처음으로</a>
		<a href="/ch10/library/book/register.do">등록하기</a>
		<table border="1">
			<tr>
				<th>책번호</th>
				<th>책이름</th>
				<th>작가</th>
				<th>출판사</th>
				<th>대출여부</th>
				<th>등록일</th>
				<th>관리</th>
			</tr>
			<c:forEach var="library" items="${dtoList}">

			<tr>
				<td>${library.bookid}</td>
				<td>${library.name}</td>
				<td>${library.author}</td>
				<td>${library.publisher}</td>
				<td>${library.available}</td>
				<td>${library.regdate}</td>
				<td>					
					<a href="/ch10/library/book/modify.do?bookid=${library.bookid}">수정</a>			
					<a href="/ch10/library/book/delete.do?bookid=${library.bookid}">삭제</a>
				</td>
			</tr>
			</c:forEach>
		</table>		
	</body>
</html>