<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Customer::modify</title>
	</head>
	<body>
		<h3>Customer 수정</h3>
		
		<a href="/ch10">처음으로</a>
		<a href="/ch10/shop/customer/list.do">목록이동</a>
		
		<form action="/ch10/shop/customer/modify.do" method="post">
			<table border="1">
				<tr>
					<td>아이디</td>
					<td><input type="text" name="cid" readonly value="${customer.cid}" placeholder="아이디 입력"/></td>
				</tr>
				<tr>
					<td>이름</td>
					<td><input type="text" name="name" value="${customer.name}" placeholder="이름 입력"/></td>
				</tr>
				<tr>
					<td>전화번호</td>
					<td><input type="text" name="hp" value="${customer.hp}" placeholder="전화번호 입력"/></td>
				</tr>
				<tr>
					<td>주소</td>
					<td><input type="text" name="address" value="${customer.address}" placeholder="주소 입력"/></td>
				</tr>
				<tr>
					<td>날짜</td>
					<td><input type="date" name="rdate" value="${customer.rdate}" placeholder="날짜 입력"/></td>
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