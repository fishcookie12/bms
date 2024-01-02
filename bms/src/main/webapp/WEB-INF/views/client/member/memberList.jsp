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
<title>memberList</title>
<script>
	$().ready(function(){

		$("#searchKeyword").val("${searchKeyword}");
	});
	
	function getMemberList() {
		alert($("#searchData").val());
		var url = "${contextPath }/member/memberList"
		    url += "?searchKeyword=" +  $("#searchKeyword").val();
		    url += "&searchData=" + $("#searchData").val();

		location.href = url;
		
	}
</script>
</head>
<body>
	<div align="center">
	<h3>회원 리스트</h3>
	<table border="1" style="align-content: center">
			<tr>
				
				<td>회원아이디</td>
				<td>회원이름</td>
				<td>휴대폰번호</td>
				<td>이메일</td>
				<td>성별</td>
				<td>가입일</td>
			</tr>
			<tbody id="memberList">
				<c:choose>
					<c:when test="${empty memberList}">
						<tr align="center">
							<td colspan="6"><strong>조회된 회원이 없습니다.</strong></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="memberDTO" items="${memberList}">
							<tr>
								
								<td>${memberDTO.memberId}</td>
								<td>${memberDTO.memberNm}</td>
								<td>${memberDTO.hp}</td>
								<td>${memberDTO.email}</td>
								<td>${memberDTO.sex}</td>
								
								<td><fmt:formatDate value="${memberDTO.joinDt}" pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
			<tr>
				<td colspan="6" align="center">
					<select id="searchKeyword">
						<option value="total">전체검색</option>
						<option value="memberId">회원아이디</option>
						<option value="memberNm">회원이름</option>
					</select>
					<input type="text" id=searchData>
                    <input type="button" value="조회하기" onclick="getMemberList()">
				</td>
			</tr>
		</table>
		
	</div>
</body>
</html>