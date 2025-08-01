<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>library-Book::register</title>
	</head>
	<body>
		<h3>library-Book 등록</h3>
		
		<a href="/ch10">처음으로</a>
		<a href="/ch10/library/book/list.do">목록이동</a>
		
		<form action="/ch10/library/book/register.do" method="post">
			<table border="1">
				<tr>
					<td>책번호</td>
					<td><input type="number" name="bookid" placeholder="책번호 입력"/></td>
				</tr>
				<tr>
					<td>책이름</td>
					<td><input type="text" name="name" placeholder="책이름 입력"/></td>
				</tr>
				<tr>
					<td>작가</td>
					<td><input type="text" name="author" placeholder="작가 입력"/></td>
				</tr>
				<tr>
					<td>출판사</td>
					<td><input type="text" name="publisher" placeholder="출판사 입력"/></td>
				</tr>
				<tr>
					<td>대출여부</td>
					<td>
						<select name="available">
							<option>Y</option>
							<option>N</option>
						</select>
				</tr>
				<tr>
					<td>등록일</td>
					<td><input type="date" name="regdate"/></td>
				</tr>
				<tr>					
					<td colspan="2" align="right">
						<input type="submit" value="등록하기"/>
					</td>
				</tr>			
			</table>		
		</form>
	</body>
</html>