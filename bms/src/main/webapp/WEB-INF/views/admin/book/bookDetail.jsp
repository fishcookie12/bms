<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookDetail</title>
<script>
    $().ready(function () {
   
        var quantityInput = $('#quantity');

        $("#plus1").click(function () {
            var currentValue = Number(quantityInput.val());
            quantityInput.val(currentValue + 1);
            updateTotalPrice();
        });
    
     
        $("#minus1").click(function () {
            var currentValue = Number(quantityInput.val());
            quantityInput.val(currentValue > 1 ? currentValue - 1 : 1);
            updateTotalPrice();
        });
       
        $("#addToCart").click(function() {
           
             if (${bookDTO.stock} === 0) {
                return;
             }
         
            var memberId="${sessionScope.memberId}";
            var quantity=parseInt($("#quantity").val());
            var bookCd = "${bookDTO.bookCd}";
            
            var param={
                    "memberId" : memberId,
                    "bookCd" : bookCd,
                    "quantity" : quantity
            };
            
            
            $.ajax({
                url : "${contextPath}/cart/addCart",
                type : "post",
                data : param,
                success : function() {
                    alert("장바구니 추가완료");
                }
            });
            
        }); 
        

        
        function updateTotalPrice() {
            var price = parseInt('${bookDTO.price}');
            var quantity = parseInt(quantityInput.val());
            var totalPrice = price * quantity;

           
            $('#totalPrice').text(new Intl.NumberFormat('ko-KR').format(totalPrice) + '원'); 
        }
        
        $("#checkoutButton").click(function () {
            var quantity = parseInt($("#quantity").val());
            var bookCd = "${bookDTO.bookCd}";
            var bookNm="${bookDTO.bookNm}";
            var totalPrice = ${bookDTO.price} * quantity;
            var point=${bookDTO.point}* quantity

            location.href = '${contextPath}/order/addOrder?bookCd=' + bookCd + '&bookNm=' + bookNm + '&quantity=' + quantity + '&price=' + totalPrice + "&point=" + point;
        });
   
});
</script>
</head>

<body>
    
    
    <!-- Product Details Section Begin -->
    
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">
                            <img src="${contextPath}/book/thumbnails?fileName=${bookDTO.imgNm}" width="50" height="500" alt="사진">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3>${bookDTO.bookNm }</h3>
                        <div class="product__details__rating">
                            
                        </div>
                        <div class="product__details__price"><fmt:formatNumber value="${bookDTO.price}" type="number" pattern="#,##0원" /></div>
                        <p>적립포인트 : ${bookDTO.point }</p>
                        배송비 : ${bookDTO.deliveryPrice }
                        <p>7만원이상 주문시 배송비 무료</p>
                        <input type="button" value="+" id="plus1">
                        <input type="text" value="1" id="quantity" name="quantity">
                        <input type="button" value="-" id="minus1">
                        <c:choose>
                            <c:when test="${bookDTO.stock eq 0 }">
                               <button type="button" class="site-btn" id="addToCart" disabled>장바구니</button>
                 		<button type="button" class="site-btn" id="checkoutButton" disabled>주문하기</button>
                            </c:when>
                            <c:otherwise>
		                 		<button type="button" class="site-btn" id="addToCart">장바구니</button>
		                 		<button type="button" class="site-btn" id="checkoutButton">주문하기</button>
                                
                            </c:otherwise>
                        </c:choose>
                       
                        <h6>총금액 :<span id="totalPrice"> ${bookDTO.price }원 </h6>
                 		 <c:if test="${sessionScope.adminId eq 'admin1' or sessionScope.adminId eq 'admin2' or sessionScope.adminId eq 'admin3'}">
				            <button type="button" class="site-btn" onclick="location.href='modifyBook?bookCd=${bookDTO.bookCd}';">도서정보수정하기</button>
				            <button type="button" class="site-btn" onclick="location.href='removeBook?bookCd=${bookDTO.bookCd}';">도서정보삭제하기</button>
				        </c:if>
                        <ul>
                            <li><b>재고유무</b> 
                                <span>
                                    <c:choose>
                                        <c:when test="${bookDTO.stock eq 0 }">
                                            <p>재고없음</p>
                                        </c:when>
                                        <c:otherwise>
                                            <p>재고있음</p>
                                        </c:otherwise>
                                    </c:choose>
                                </span>
                            </li>
                            <li><b>저자</b> <span>${bookDTO.writer }</li>
                            <li><b>출판사</b> <span> ${bookDTO.publisher }</span></li>
                            <li><b>총페이지 </b><span>${bookDTO.totalPage}</span></li>
                            <li><b>출판일 </b><span><fmt:formatDate value="${bookDTO.publishedDt }" pattern="yyyy-MM-dd"/></span></li>
                     
                        </ul>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"
                                    aria-selected="true">책 소개 </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"
                                    aria-selected="false">저자소개</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"
                                    aria-selected="false">기타</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>목차</h6>
                                    <c:if test="${bookDTO.contentsOrder !=null}">
                                    	<p>${bookDTO.contentsOrder }</p>
                                    </c:if>
                                </div>
                                <div class="product__details__tab__desc">
                                    <h6>책소개</h6>
                                    <p>
                                        <c:if test="${bookDTO.intro != null }">
                                            
                                                <td>책소개</td>
                                                <td>${bookDTO.intro }</td>
                                        </c:if>    
                                    </p>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>저자소개</h6>
                                    <p>
                                        <c:if test="${bookDTO.writerIntro != null }">
                                            <p>${bookDTO.writerIntro }</p>
                                        </c:if>
                                </div>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <div class="product__details__tab__desc">
                                    <h6>출판서문</h6>
                                    <p>
                                        <c:if test="${bookDTO.publisherComment != null }">
                                            ${bookDTO.publisherComment }
                                        </c:if>
                                    </p>
                                </div>
                                <div class="product__details__tab__desc">
                                    <h6>추천사</h6>
                                    <p>
                                        <c:if test="${bookDTO.recommendation != null }">
                                            ${bookDTO.recommendation }
                                        </c:if>
                                    </p>
                                </div>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </section>
</body>
</html>
