<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginMember</title>
</head>
<body>
	<h3>로그인하기</h3>
	<form action="${contextPath }/member/loginMember" method="post">
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="memberId" placeholder="아이디를 입력하세요" required>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="passwd" placeholder="비밀번호를 입력하세요" required>
				</td>
			</tr>
		</table>
		<input type="submit" value="로그인">	
	</form>
	<p><a href="${contextPath}/member/findId">아이디찾기</a></p>
	<p><a href="${contextPath}/member/findPw">비밀번호찾기</a></p>
</body>
</html>