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
<title>orderDetail</title>
<script>
	
</script>
</head>
<body>
	<div align="center">
		<h4>${sessionScope.memberId}님 배송정보</h4>
			<table border="1">
			<tr>
				<td>수취인</td>
				<td>${orderDTO.receiver}</td>
			</tr>
			<tr>
				<td>배송연락처</td>
				<td>${orderDTO.hp}</td>
			</tr>
			<tr>
				<td>배송주소</td>
				<td>${orderDTO.deliveryAdress}</td>
			</tr>
			<tr>
				<td>배송메세지</td>
				<td>${orderDTO.deliveryMessage}</td>
			</tr>
			<tr>
				<td>배송상태</td>
				<td>${orderDTO.deliveryStatus}</td>
			</tr>
		</table>
		<c:choose>
			<c:when test="${orderDTO.deliveryStatus eq '배송준비중'}">
				<input type="button"  value="배송정보수정하기" onclick="location.href='${contextPath}/order/modifyOrder?orderCd=${orderDTO.orderCd}';" >
				<input type="button"  value="주문취소하기" onclick="location.href='${contextPath}/order/removeOrder?orderCd=${orderDTO.orderCd}';" >
			</c:when>
			<c:otherwise>
				<input type="button"  value="배송정보수정하기" disabled>
				<input type="button"  value="주문취소하기" disabled>
				<p style="color: gray">${orderDTO.deliveryStatus}단계에서는 배송정보수정과 주문취소가 불가능합니다.</p>
			</c:otherwise>
		</c:choose>
	</div>
</body>
</html>