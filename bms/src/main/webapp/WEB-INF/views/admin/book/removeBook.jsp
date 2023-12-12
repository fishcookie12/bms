<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>removeBook</title>
</head>
<body>
	<h3>도서 삭제</h3>
		<p><span style="color:red;">해당 도서를 삭제하시겠습니까?</span></p>
		<form action="${contextPath }/book/removeBook" method="post">
			<input type="hidden" name="bookCd" value="${bookCd }">
			<input type="submit" value="삭제하기">
			<input type="button" value="취소" onclick="location.href='${contextPath }/book/'">
		</form>
</body>
</html>