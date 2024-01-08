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

<script>
	$().ready(function(){
	
		$("#searchCategory").val("${searchCategory}");
	});
	
	function getAdminOrderList() {
		
		var url = "${contextPath }/order/adminOrderList"
		    url += "?searchCategory=" +  $("#searchCategory").val();
		    url += "&searchContent=" + $("#searchContent").val();
		    

		location.href = url;
		
	}
</script>
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
                                    <th>멤버아이디</th>
									<th>주문일</th>
									<th>배송상태</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="orderDTO" items="${orderList}">
                                    <tr>
                                    	<td ><a href="${contextPath}/order/adminOrderDetail?orderCd=${orderDTO.orderCd }">${orderDTO.orderCd }</a></td>
                                        <td class="shoping__cart__item">
                                            <img src="img/cart/cart-1.jpg" alt="">
                                            <h5>${orderDTO.memberId }</h5>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                                <fmt:formatDate value="${orderDTO.orderDt }" pattern="yyyy-MM-dd"/>
                                            </div>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                           <div class="quantity">
                                                ${orderDTO.deliveryStatus }
                                            </div>
                                        </td>
                                       
                                    </tr>
                                </c:forEach>
                                <tr>
									<td colspan="5" align="center">			
										<select id="searchCategory">
											<option value="total">전체검색</option>
											<option value="memberId">아이디</option>
											<option value="deliveryStatus">배송상태</option>
										</select>
										<input type="text" id="searchContent" name="searchContent" value="${searchContent }">
										<input type="button" value="검색" onclick="getAdminOrderList()">
									</td>
								</tr>
                            </tbody>
                        </table>
              </div>
			</div>
        </div>
    </section>
	
</body>
</html>