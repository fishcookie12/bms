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
<title>cartList</title>
<script>
	$().ready(function () {
		   
	    var quantityInput = $('#quantity');
	    var plusButton = $('#plus1');
	    var minusButton = $('#minus1');
	
	    	
	    plusButton.click(function () {
	        	
	        var currentValue = parseInt(quantityInput.val());
	        quantityInput.val(currentValue + 1);
	       
	    });
	
	 
	    minusButton.click(function () {
	        
	        var currentValue = parseInt(quantityInput.val());
	        quantityInput.val(currentValue > 1 ? currentValue - 1 : 1);
	       
	    });
	  
	});
</script>
</head>
<body>
	<h3>장바구니</h3>
	 <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th class="shoping__product">상품명</th>
                                    <th>가격</th>
                                    <th>수량</th>
                                    <th>총가격</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <c:forEach var="cartDTO" items="${cartList}">              
	                            <tbody>
	                                <tr>
	                                    <td class="shoping__cart__item">
	                                        <img src="img/cart/cart-1.jpg" alt="">
	                                        <h5>${cartDTO.bookNm }</h5>
	                                    </td>
	                                    <td class="shoping__cart__price">
	                                        ${cartDTO.price }
	                                    </td>
	                                    <td class="shoping__cart__quantity">
	                                        <div class="quantity">
	                                            <div class="pro-qty">
	                                                <input type="text" value="${cartDTO.quantity }">
	                                                 
							                        <input type="button" value="+" id="plus1">
							                        <input type="button" value="-" id="minus1">
	                                            </div>
	                                        </div>
	                                    </td>
	                                    <td class="shoping__cart__total">
	                                       ${cartDTO.price * cartDTO.quantity}
	                                    </td>
	                                    <td class="shoping__cart__item__close">
	                                        <span class="icon_close"></span>
	                                    </td>
	                                </tr>
	                               
	                            </tbody>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>

        
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
                        <!-- 
                          <li>총구매수량  <span>${fn:sum(cartList, 'quantity')}</span></li>
                   		 <li>총구매금액 <span>${fn:sum(cartList, 'price * quantity')}</span></li>
                        
                         -->
                        </ul>
                        <a href="#" class="primary-btn">주문하기</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->
</body>
</html>