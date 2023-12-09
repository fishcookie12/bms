<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>detailMember</title>
</head>
<body>
	<h3>회원정보상세조회</h3>
	<form>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>${memberDTO.memberId }</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>${memberDTO.memberNm }</td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td>${memberDTO.hp }</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>${memberDTO.email }</td>
			</tr>
		</table>
		<input type="button" value="메인화면" onclick="location.href='${contextPath}/member/index'">
		<input type="button" value="회원정보수정하기" onclick="location.href='authentication?memberId'+${memberDTO.memberId}&menu=update';">
		<input type="button" value="회원탈퇴하기" onclick="location.href='authentication?memberId'+${memberDTO.memberId}&menu=delete';">
	</form>
</body>
</html>