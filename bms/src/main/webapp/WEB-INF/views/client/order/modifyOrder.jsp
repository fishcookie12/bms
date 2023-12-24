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
<title>modifyOrder</title>
</head>
<script>
	$().ready(function() {
	    
	    $("#hp").on("input", function() {
	      
	        var inputValue = $(this).val().replace(/[^0-9]/g, '');
	
	        inputValue = inputValue.substring(0, 11);
	
	        $(this).val(inputValue);
	    });
	     
	});
</script>
<body>
	<div align="center">
	<h4>${sessionScope.memberId}님 배송정보수정</h4>
	<form action="${contextPath }/order/modifyOrder" method="post">
		<table border="1">
			<tr>
				<td>수취인</td>
				<td>
					<input type="text" value="${orderDTO.receiver}" name="receiver">
				</td>
			</tr>
			<tr>
				<td>배송연락처</td>
				<td>
					<input type="text" value="${orderDTO.hp}" name="hp" id="hp" placeholder="숫자로만 입력하세요" >
				</td>
			</tr>
			<tr>
				<td>배송주소</td>
				<td>
					<input type="text" value="${orderDTO.deliveryAdress}" name="deliveryAdress">
				</td>
			</tr>
			<tr>
				<td>배송메세지</td>
				<td>
					<input type="text" value="${orderDTO.deliveryMessage}" name="deliveryMessage">
				</td>
			</tr>
		</table>
		<input type="hidden" name="orderCd" value="${orderDTO.orderCd }">
		<input type="submit" value="수정완료">
	</form>
	</div>
</body>
</html>