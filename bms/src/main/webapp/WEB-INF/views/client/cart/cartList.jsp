<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cartList</title>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
    $(document).ready(function () {
    	
    	var plusButtons = $('.quantity input.plus');
        var minusButtons = $('.quantity input.minus');
        var deleteButtons = $('.shoping__cart__item__close input.delete');

        updateTotalPrice();
        
        plusButtons.click(function () {
            var currentRow = $(this).closest('tr');
            var quantityInput = currentRow.find('input[type="text"]');
            var currentValue = parseInt(quantityInput.val());
            quantityInput.val(currentValue + 1);
            updateTotalPrice();
            updateCart();
        });

        minusButtons.click(function () {
            var currentRow = $(this).closest('tr');
            var quantityInput = currentRow.find('input[type="text"]');
            var currentValue = parseInt(quantityInput.val());
            quantityInput.val(currentValue > 1 ? currentValue - 1 : 1);
            updateTotalPrice();
            updateCart();
        });
        
        deleteButtons.click(function () {
            var currentRow = $(this).closest('tr');
            currentRow.remove();
            updateTotalPrice();
        });

        function updateTotalPrice() {
            var totalQuantity = 0;
            var totalPrice = 0;

            $('.shoping__cart__table tbody tr').each(function () {
                var quantity = parseInt($(this).find('.shoping__cart__quantity input[type="text"]').val());
                var price = parseInt($(this).find('.shoping__cart__price').text().trim());
                var total = quantity * price;

                totalQuantity += quantity;
                totalPrice += total;

                $(this).find('.shoping__cart__total').text(total);
            });

            $('.total-quantity').text(totalQuantity);
            $('.total-price').text(totalPrice);
        }
        
       function updateCart() {
    	   var memberId="${sessionScope.memberId}";
   			var bookCd="${cartDTO.bookCd}";
   			var quantity=parseInt($("#quantity").val());
   			var param={
	   				"memberId" : memberId,
	   				"bookCd" : bookCd,
	   				"quantity" : quantity
   			};
   			console.log(param);
   			$.ajax({
   				url : "${contextPath}/cart/modifyCart",
   				type : "post",
   				data : param,
   				success :function(){
   					alert("수정완료");
   				}
   			})
		}
    });
</script>
</head>
<body>

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
                            <tbody>
                                <c:forEach var="cartDTO" items="${cartList}">
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
                                                <input type="button" value="+" class="plus">
												<input type="text" value="${cartDTO.quantity}" size="3">
												<input type="button" value="-" class="minus">
                                            </div>
                                        </td>
                                        <td class="shoping__cart__total">
                                            ${cartDTO.quantity * cartDTO.price }
                                        </td>
                                        <td class="shoping__cart__item__close">
                                            <input type="button" value="삭제" id="delete" class="delete"></span>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
                            <li>총 주문 수량: <span class="total-quantity">0</span></li>
                            <li>총 주문 금액: <span class="total-price">0</span></li>
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

