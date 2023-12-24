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
<title>adminOrderList</title>
</head>
<body>
	<div align="center">
	<h4>관리자 주문리스트입니다.</h4>
	<table border="1">
		<tr align="center">
			<th>주문코드</th>
			<th>멤버아이디</th>
			<th>주문일</th>
			<th>배송상태</th>
		</tr>
		<c:forEach var="orderDTO" items="${orderList}" >
			<tr align="center">
				<td><a href="${contextPath}/order/adminOrderDetail?orderCd=${orderDTO.orderCd }">${orderDTO.orderCd }</a></td>
				<td>${orderDTO.memberId }</td>
				<td><fmt:formatDate value="${orderDTO.orderDt }" pattern="yyyy-MM-dd"/></td>
				<td>${orderDTO.deliveryStatus }</td>
			</tr>
		</c:forEach>
	</table>
	</div>
</body>
</html>