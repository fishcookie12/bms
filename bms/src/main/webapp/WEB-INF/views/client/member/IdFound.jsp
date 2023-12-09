<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>IdFound</title>
</head>
<body>
	<h3>아이디를 확인해주세요</h3>
	<p>귀하의 아이디는 ${foundId } 입니다.</p>
	<p><a href="${contextPath}/member/loginMember">로그인하기</a></p>
	<p><a href="${contextPath}/member/findPw">비밀번호찾기</a></p>
</body>
</html>