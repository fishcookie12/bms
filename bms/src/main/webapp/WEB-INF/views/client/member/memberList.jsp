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
<title>memberList</title>
<script>
	$().ready(function(){

		$("#searchKeyword").val("${searchKeyword}");
	});
	
	function getMemberList() {
		
		var url = "${contextPath }/member/memberList"
		    url += "?searchKeyword=" +  $("#searchKeyword").val();
		    url += "&searchData=" + $("#searchData").val();

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
                                    <td>회원아이디</td>
									<td>회원이름</td>
									<td>휴대폰번호</td>
									<td>이메일</td>
									<td>성별</td>
									<td>가입일</td>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="memberDTO" items="${memberList}">
                                    <tr>
                                    	
                                        <td class="shoping__cart__item">
                                            <img src="img/cart/cart-1.jpg" alt="">
                                            <h5>${memberDTO.memberId}</h5>
                                        </td>
                                        <td class="shoping__cart__item">
                                            <img src="img/cart/cart-1.jpg" alt="">
                                            <h5>${memberDTO.memberNm}</h5>
                                        </td>
                                        <td class="shoping__cart__item">
                                            <img src="img/cart/cart-1.jpg" alt="">
                                            <h5>${memberDTO.hp}</h5>
                                        </td>
                                        <td class="shoping__cart__item">
                                            <img src="img/cart/cart-1.jpg" alt="">
                                            <h5>${memberDTO.email}</h5>
                                        </td>
                                        <td class="shoping__cart__item">
                                            <img src="img/cart/cart-1.jpg" alt="">
                                            <h5>${memberDTO.sex}</h5>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                                <fmt:formatDate value="${memberDTO.joinDt}" pattern="yyyy-MM-dd" />
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                <tr>
									<td colspan="6" align="center">
										<select id="searchKeyword">
											<option value="total">전체검색</option>
											<option value="memberId">회원아이디</option>
											<option value="memberNm">회원이름</option>
										</select>
										<input type="text" id=searchData>
					                    <input type="button" value="조회하기" onclick="getMemberList()">
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