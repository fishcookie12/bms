<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeMember</title>
</head>
<body>
<h3>회원탈퇴</h3>
		<p><span style="color:red;">탈퇴하시겠습니까?</span></p>
		<form action="${contextPath }/member/removeMember" method="post" >
			<input type="hidden" name="memberId" value="${memberId }">
			<input type="submit" value="탈퇴하기">
		</form>
</body>
</html>