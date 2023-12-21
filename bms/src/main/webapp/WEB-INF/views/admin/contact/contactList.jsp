<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>contactList</title>
</head>
<body>
	<h3>문의관리</h3>
	<form action="">
		<table border="1">
			<tr>
				<th>번호</th>
				<th>문의코드</th>
				<th>멤버아이디</th>
				<th>문의내용</th>
				<th>이메일</th>
				<th>문의날짜</th>
			</tr>
			<c:set var="idx" value="1"/>
			<c:forEach var="ContactDTO" items="${contactList}">
				<tr>
					<td>${idx }</td>
					<td>${contactDTO.contactCd }</td>
					<td>${contactDTO.memberId }</td>
					<td>${contactDTO.message }</td>
					<td>${contactDTO.email }</td>
					<td><fmt:formatDate value="${contactDTO.enrollDt }" pattern="yyyy-MM-dd"/></td>
				</tr>
				<c:set var="idx" value="${idx=idx+1 }"/>
			</c:forEach>
		</table>
	</form>
</body>
</html>