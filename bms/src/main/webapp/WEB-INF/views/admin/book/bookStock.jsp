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
<title>bookStock</title>
<script>
	$().ready(function(){

		$("#stockSearchkeywords").val("${stockSearchkeywords}");
	});
	
	function getStockList() {
		
		var url = "${contextPath }/book/bookStock"
		    url += "?stockSearchkeywords=" +  $("#stockSearchkeywords").val();
		    url += "&stockSearchWords=" + $("#stockSearchWords").val();

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
                                    <th>번호</th>
									<th>도서코드</th>
									<th>도서제목</th>
									<th>저자</th>
									<th>재고현황</th>
                                </tr>
                            </thead>
                            <tbody>
                               <c:set var="idx" value="1"/>
								<c:forEach var="bookDTO" items="${bookList}">
                                    <tr>
                                    	<td>${idx }</td>
                                    	<td ><a href="${contextPath }/book/bookDetail?bookCd=${bookDTO.bookCd }">${bookDTO.bookCd }</a></td>
                                        <td class="shoping__cart__item">
                                            <img src="img/cart/cart-1.jpg" alt="">
                                            <h5>${bookDTO.bookNm }</h5>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                                <h5>${bookDTO.writer }</h5>
                                            </div>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                           <div class="quantity">
                                               ${bookDTO.stock }
                                            </div>
                                        </td>
                                       
                                    </tr>
                                    <c:set var="idx" value="${idx=idx+1 }"/>
                                </c:forEach>
                                <tr>
									<td colspan="6" align="center">
								<select id="stockSearchkeywords">
									<option value="total">전체검색</option>
									<option value="bookNm">도서제목</option>
									<option value="writer">저자</option>
								</select>
								<input type="text" id=stockSearchWords>
			                    <input type="button" value="조회하기" onclick="getStockList()">
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