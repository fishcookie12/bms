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
<title>contactDetail</title>
<script>
	$().ready(function() {
		$("#resolvedChange").click(function() {
			var resolvedValue = $("input[name='resolved']:checked").val();
			$.ajax({
				type : "POST",
				url : "${contextPath}/contact/modifyContact",
				data : { contactCd : "${contactDTO.contactCd}",
						resolved: resolvedValue}
			})
		})
	});
</script>
</head>
<body>
	<div align="center">
	<h3>관리자전용페이지입니다.</h3>
	
		<table border="1">
			<tr>
				<td>회원</td>
				<td>${contactDTO.memberId }</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>${contactDTO.email }</td>
			</tr>
			<tr>
				<td>문의일</td>
				<td><fmt:formatDate value="${contactDTO.enrollDt }" pattern="yyyy-MM-dd"/></td>
			</tr>
			<tr>
				<td>문의메세지</td>
				<td>${contactDTO.message }</td>
			</tr>
			<tr>
				<td>답변상태</td>
				<td>
					<input type="radio" name="resolved" value="답변대기중">답변대기중
					<input type="radio" name="resolved" value="답변완료">답변완료
				</td>
			</tr>
		</table>
		<input type="button" value="확인" id="resolvedChange">
		</div>
</body>
</html>