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
<title>salseInquiry</title>
<script>

</script>
</head>
<body>
	<div align="center">
	<h4>관리자매출조회</h4>
	<p>단위 : 원</p>
		<table border="1">
			<tr>
				<td>현재총매출</td>
				<td>여성매출</td>
				<td>여성베스트셀러</td>
				<td>남성매출</td>
				<td>남성베스트셀러</td>
				<td>전체베스트셀러</td>
			</tr>
			<tr>
				<td><fmt:formatNumber value="${totalSales}" type="number" pattern="#,###" /></td>
				<td><fmt:formatNumber value="${totalWomanSales}" type="number" pattern="#,###" /></td>
				<td>
					<c:forEach var="womanBestSellers" items="${womanBestSellers}">
						<p>${womanBestSellers.bookNm}</p>
					</c:forEach>
				</td>
				<td><fmt:formatNumber value="${totalManSales}" type="number" pattern="#,###" /></td>
				<td>
					<c:forEach var="manBestSellers" items="${manBestSellers }">
						<p>${manBestSellers.bookNm }</p>
					</c:forEach>
				</td>
				<td>
					<c:forEach var="bestSeller" items="${bestSellers}">
						<p>${bestSeller.bookNm}</p>
					</c:forEach>
				</td>
			</tr>
		</table>
		
	</div>
</body>
</html>