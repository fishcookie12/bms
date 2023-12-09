<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findId</title>
</head>
<body>
	<h3>아이디찾기</h3>
	<form action="${contextPath }/member/findId" method="post">
		<table border="1">
			<tr>
				<td>생년월일</td>
				<td>
					<input type="text" name="birthDt" placeholder="6자리 숫자로만 입력하세요">
				</td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td>
					<input type="text" name="hp" placeholder="숫자로만 입력하세요">
				</td>
			</tr>
		</table>
		<input type="submit" value="확인">
	</form>
</body>
</html>