<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>책::modify</title>
	</head>
	<body>
		<h3>Book 수정</h3>
		
		<a href="/ch10">처음으로</a>
		<a href="/ch10/library/book/list.do">목록이동</a>
		<form action="/ch10/library/book/modify.do" method="post">
			<table border="1">
				<tr>
					<td>책번호</td>
					<td><input type="text" name="bookid" readonly value="${bookDTO.bookid}" placeholder="책번호 입력"/></td>
				</tr>
				<tr>
					<td>책이름</td>
					<td><input type="text" name="name" value="${bookDTO.name}" placeholder="책이름 입력"/></td>
				</tr>
				<tr>
					<td>작가</td>
					<td><input type="text" name="author" value="${bookDTO.author}" placeholder="작가 입력"/></td>
				</tr>
				<tr>
					<td>출판사</td>
					<td><input type="text" name="publisher" value="${bookDTO.publisher}" placeholder="출판사 입력"/></td>
				</tr>
				<tr>
					<td>대출여부</td>
					<td><input type="text" name="available" value="${bookDTO.available}" placeholder="대출여부 입력"/></td>
				</tr>
				<tr>
					<td>등록일</td>
					<td><input type="date" name="regdate" value="${bookDTO.regdate}" placeholder="등록일 입력"/></td>
				</tr>
				<tr>					
					<td colspan="2" align="right">
						<input type="submit" value="수정하기"/>
					</td>
				</tr>			
			</table>		
		</form>			
	</body>
</html>