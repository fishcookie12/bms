<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findPw</title>
</head>
<body>
	<h3>비밀번호찾기</h3>
	<form action="${contextPath }/member/findPw" method="post">
		<table>
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="memberId">
				</td>
			</tr>
		</table>
		<input type="submit" value="확인">
	</form>
</body>
</html>