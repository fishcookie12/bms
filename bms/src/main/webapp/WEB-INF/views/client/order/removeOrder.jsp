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
<title>removeOrder</title>
</head>
<body>
	<div align="center">
		<h3>${sessionScope.memberId}님</h3>
		<p><span style="color:red;">주문을 취소하시겠습니까?</span></p>
		<form action="${contextPath }/order/removeOrder" method="post">
			<input type="hidden" name="orderCd" value="${orderCd }">
			<input type="submit" value="취소하기">
		</form>
	</div>
</body>
</html>