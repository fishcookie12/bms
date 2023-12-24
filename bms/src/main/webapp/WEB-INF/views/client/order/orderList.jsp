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
<title>orderList</title>
</head>
<body>
	<div align="center">
	<h4>${sessionScope.memberId}님 주문내역</h4>
	
		<table border="1">
	       	<tr align="center">
	       		<th>주문번호</th>
	       		<th>상품명</th>
	       		<th>수량</th>
	       		<th>주문금액</th>
	       		<th>주문일자</th>
	       		<th>배송상태</th>		
	       	</tr>
	       	
	       	<c:forEach var="orderDTO" items="${orderList}">
              <tr align="center">
              	<td ><a href="${contextPath}/order/orderDetail?orderCd=${orderDTO.orderCd }">${orderDTO.orderCd}</a></td>
              	<td >${orderDTO.bookNm}</td>
              	<td >${orderDTO.orderBookQty}</td>
              	<td >${orderDTO.totalPrice}</td>
              	<td><fmt:formatDate value="${orderDTO.orderDt }" pattern="yyyy-MM-dd"/></td>
              	<td >${orderDTO.deliveryStatus}</td>
               </tr>
           </c:forEach>
          </table>
         </div>
</body>
</html>