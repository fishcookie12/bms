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
<title>addOrder</title>
<script>
$(document).ready(function() {
    updateTotalPrice();

    $("#hp").on("input", function() {
        var inputValue = $(this).val().replace(/[^0-9]/g, '');
        inputValue = inputValue.substring(0, 11);
        $(this).val(inputValue);
    });

    $("#checkoutForm").submit(function(event) {
        var paymentMethod = $("input[name='paymentMethod']:checked").val();

        if (!paymentMethod) {
            alert("결제방식을 선택하세요");
            event.preventDefault();
        } else {
            updateTotalPrice();
        }
    });

    function updateTotalPrice() {
        var totalPrice = 0;

        $("table tr:gt(0)").each(function () {
            var priceCell = $(this).find("td:eq(2)");
            var price = parseInt(priceCell.text().replace("원", "").replace(",", ""), 10);

            totalPrice += price;
        });

        var deliveryFee = 2500;
        if (totalPrice < 70000) {
            totalPrice += deliveryFee;
            $("#deliveryFee").text(deliveryFee.toLocaleString());
        } else {
            $("#deliveryFee").text("0");
        }

        $(".checkout__order__total span").text(totalPrice.toLocaleString() + "원");
    }
});
</script>
</head>
<body>
	 <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
           
            <div class="checkout__form">
                <h4>주문페이지</h4>
                <form action="${contextPath }/order/addOrder" method="post" id="checkoutForm" >
                    <div class="row">
                        <div class="col-lg-8 col-md-6">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>받는사람<span>*</span></p>
                                        <input type="text" name="receiver" required>
                                    </div>
                                </div>
                            </div>
                           
                            <div class="checkout__input">
                                <p>주소<span>*</span></p>
                                <input type="text" name="deliveryAdress" class="checkout__input__add" required>  
                            </div>
                            <div class="checkout__input">
                                <p>배송메세지<span>*</span></p>
                                <input type="text" name="deliveryMessage" class="checkout__input__add" placeholder="배송기사님께 남길 메세지를 입력해주세요">  
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="checkout__input">
                                        <p>휴대폰번호<span>*</span></p>
                                        <input type="text" name="hp" placeholder="숫자로만 입력하세요" id="hp" required>
                                    </div>
                                </div>
                               
                            </div>
                       
                        </div>
                        <div class="col-lg-4 col-md-6">
                            <div class="checkout__order">
                                <h5>${sessionScope.memberId}님 주문내역</h5>
                                <table border="1">
                                	<tr>
                                		<th>상품명</th>
                                		<th>수량</th>
                                		<th>가격</th>
                                		<th>포인트</th>
                                	</tr>
                                	
                                	
                                        <tr>
                                        	<td id="bookNmDisplay" width="30%">${param.bookNm}</td>
							                <td id="quantityDisplay" width="10%">${param.quantity}</td>
							                <td id="priceDisplay" width="20%">${param.price}</td>
							                <td id="priceDisplay" width="20%">${param.point}</td>

                                        </tr>
                                  
                                </table>
                               
                               
                                <div class="checkout__order__delivery-fee"><p>배송비: <span id="deliveryFee">0</span>원</p></div>
                                <div class="checkout__order__total">Total <span></span></div>
                                <p>결제방식을 선택하세요</p>
                                <input type="radio" name="paymentMethod" value="card">카드
                                <input type="radio" name="paymentMethod" value="bankTransfer">계좌이체
                                <input type="radio" name="paymentMethod" value="phone">휴대폰결제
								<input type="hidden" name="memberId" value="${sessionScope.memberId}">
								<input type="hidden" name="bookCd" value="${param.bookCd}">
								<input type="hidden" name="bookNm" value="${param.bookNm}">
								<input type="hidden" name="orderBookQty" value="${param.quantity}">
								<input type="hidden" name="totalPrice" value="${param.price}">
                               <button type="submit" class="site-btn">결제하기</button>
                               
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- Checkout Section End -->
</body>
</html>