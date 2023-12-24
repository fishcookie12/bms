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
<title>adminOrderDetail</title>
</head>
<body>
	
	<div align="center">
	
	<h4>관리자 전용 메뉴입니다.</h4>
	<h5>${orderDTO.memberId }주문정보입니다.</h5>
	<form >
		<table border="1">
			<tr align="center">
				<th>도서제목</th>
				<th>도서수량</th>
				<th>가격</th>
				<th>주문일</th>
				<th>배송상태</th>
			</tr>
	        <tr align="center">
	        	<td style="width: 30%;" >${orderDTO.bookNm}</td>
	        	<td style="width: 10%;">${orderDTO.orderBookQty}</td>
	        	<td style="width: 10%;">${orderDTO.totalPrice}</td>
	        	<td style="width: 10%;"><fmt:formatDate value="${orderDTO.orderDt }" pattern="yyyy-MM-dd"/></td>
	        	<td style="width: 10%;">${orderDTO.deliveryStatus}</td>
	         </tr>
	     </table>
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
			
		</table>
		<input type="button" value="배송상태수정" onclick="location.href='${contextPath}/order/adminModifyOrder?orderCd=${orderDTO.orderCd}';">
	</form>
	
	</div>
</body>
</html>