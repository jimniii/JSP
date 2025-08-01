<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>student::modify</title>
	</head>
	<body>
		<h3>student 수정</h3>
		
		<a href="/ch10">처음으로</a>
		<a href="/ch10/college/student/list.do">목록이동</a>
		
		<form action="/ch10/college/student/modify.do" method="post">
			<table border="1">
				<tr>
					<td>학번</td>
					<input type="text" name="stdno" readonly value="${student.stdNo}" placeholder="학번 입력"/>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${student.name}" placeholder="이름 입력"/></td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="date" name="birth" value="${student.birth}" placeholder="생년월일 입력"/></td>
				</tr>
				<tr>
					<td>전공</td>
					<td><input type="text" name="major" value="${student.major}" placeholder="학과 입력"/></td>
				</tr>
				<tr>
					<td>입학날짜</td>
					<td><input type="date" name="enr_date" value="${student.enr_date}" /></td>
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