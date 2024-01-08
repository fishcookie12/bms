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
<title>contactList</title>
<script>
	$().ready(function(){

		$("#searchQuery").val("${searchQuery}");
	});
	
	function getContactList() {
		
		var url = "${contextPath }/contact/contactList"
		    url += "?searchQuery=" +  $("#searchQuery").val();
		    url += "&searchTerm=" + $("#searchTerm").val();

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
									<th>문의코드</th>
									<th>멤버아이디</th>
									<th>문의날짜</th>
									<th>답변여부</th>
                                </tr>
                            </thead>
                            <tbody>
                               <c:set var="idx" value="1"/>
								<c:forEach var="contactDTO" items="${contactList}">
                                    <tr>
                                    	<td>${idx }</td>
                                    	<td ><a href="${contextPath }/contact/contactDetail?contactCd=${contactDTO.contactCd }">${contactDTO.contactCd }</a></a></td>
                                        <td class="shoping__cart__item">
                                            <img src="img/cart/cart-1.jpg" alt="">
                                            <h5>${contactDTO.memberId }</h5>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                            <div class="quantity">
                                                <fmt:formatDate value="${contactDTO.enrollDt }" pattern="yyyy-MM-dd"/>
                                            </div>
                                        </td>
                                        <td class="shoping__cart__quantity">
                                           <div class="quantity">
                                               ${contactDTO.resolved }
                                            </div>
                                        </td>
                                       
                                    </tr>
                                    <c:set var="idx" value="${idx=idx+1 }"/>
                                </c:forEach>
                                <tr>
									<td colspan="6" align="center">
								<select id="searchQuery">
									<option value="total">전체검색</option>
									<option value="memberId">회원아이디</option>
									<option value="resolved">답변상태</option>
								</select>
								<input type="text" id=searchTerm>
			                    <input type="button" value="조회하기" onclick="getContactList()">
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