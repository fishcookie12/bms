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
<title>adminModifyOrder</title>
</head>
<body>
	<div align="center">
	<h5>관리자주문수정페이지입니다.</h5>
		<form action="${contextPath }/order/adminModifyOrder" method="post">
			<table border="1">
				<tr  align="center">
					<th>${orderDTO.memberId }배송상태</th>
				</tr>
				<tr>
					<td>
						<input type="radio" name="deliveryStatus" value="배송준비중" checked>배송준비중
						<input type="radio" name="deliveryStatus" value="출고처리중" >출고처리중
						<input type="radio" name="deliveryStatus" value="출고완료" >출고완료
						<input type="radio" name="deliveryStatus" value="배송시작" >배송시작
						<input type="radio" name="deliveryStatus" value="배송완료" >배송완료
					</td>
				</tr>
			</table>
			<input type="hidden" value="${orderDTO.orderCd }" name="orderCd">
			<input type="submit" value="수정완료">
		</form>
	</div>
</body>
</html>