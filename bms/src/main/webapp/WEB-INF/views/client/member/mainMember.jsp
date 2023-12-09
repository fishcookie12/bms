<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mainMember</title>
</head>
<body>
	<c:choose>
		<c:when test="${sessionScope.memberId eq 'admin'}">
			<p><a href="${contextPath }/member/memberList">회원리스트 조회</a></p>
			<p><a href="${contextPath }/member/logoutMember">로그아웃</a></p>
		</c:when>
		<c:otherwise>
			<c:choose>
				<c:when test="${sessionScope.memberId eq null}">
					<p><a href="${contextPath }/member/registerMember">회원가입</a></p>
					<p><a href="${contextPath }/member/loginMember">로그인</a></p>	
				</c:when>
				<c:otherwise>
					<p><a href="${contextPath }/member/modifyMember">회원정보 수정</a></p>	
					<p><a href="${contextPath }/member/logoutMember">로그아웃</a></p>
					<p><a href="${contextPath }/member/removeMember">회원탈퇴</a></p>	
				</c:otherwise>
			</c:choose>
		</c:otherwise>
	</c:choose>
</body>
</html>