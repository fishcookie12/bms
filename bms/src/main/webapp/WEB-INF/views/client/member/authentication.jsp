<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>authentication</title>
</head>
<body>
	<h3>회원정보인증하기</h3>
	<form action="${contextPath}/member/authentication" method="post">
	
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>${memberDTO.memberId }</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="passwd">
				</td>
			</tr>
		</table>
		<input type="submit" value="인증하기">
		<input type="hidden" name="memberId" value="${memberDTO.memberId }">
		<input type="hidden" name="menu" value="${menu }">
	</form>
</body>
</html>