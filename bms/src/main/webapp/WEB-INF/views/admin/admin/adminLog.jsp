<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminLog</title>
</head>
<body>
	<h3>관리자로그인</h3>
	<form action="${contextPath }/admin/adminLog" method="post">
		<table border="1">
			<tr>
				<td>관리자아이디</td>
				<td>
					<input type="text" name="adminId" required>
				</td>
			</tr>
			<tr>
				<td>관리자비밀번호</td>
				<td>
					<input type="password" name="adminPw" required>
				</td>
			</tr>
		</table>
		<input type="submit" value="로그인">
	</form>
</body>
</html>