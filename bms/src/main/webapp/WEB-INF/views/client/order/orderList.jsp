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
	<section class="shoping-cart spad">
        <div class="container">
        	
            <div class="row">
            	<div class="shoping__cart__table">
	                <table>
                            <thead>
                                <tr>
                                    <th>주문코드</th>
                                    <th>상품명</th>
						       		<th>수량</th>
						       		<th>주문금액</th>
						       		<th>배송상태</th>
						       		<th>주문일자</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="orderDTO" items="${orderList}">
                                    <tr>
                                    	<td ><a href="${contextPath}/order/orderDetail?orderCd=${orderDTO.orderCd }">${orderDTO.orderCd}</a></td>
                                        <td class="shoping__cart__item">
                                            <!--<img src="img/cart/cart-1.jpg" alt="">-->
                                            <h5>${orderDTO.bookNm}</h5>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                                ${orderDTO.orderBookQty}
                                            </div>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                           <div class="quantity">
                                                ${orderDTO.totalPrice}
                                            </div>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                           <div class="quantity">
                                                ${orderDTO.deliveryStatus}
                                            </div>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                           <div class="quantity">
                                                <fmt:formatDate value="${orderDTO.orderDt }" pattern="yyyy-MM-dd"/>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
              </div>
			</div>
        </div>
    </section>
	
</body>
</html>