<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath"  value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>404</title>
</head>
<body>
	<div align="center">
		<h2>Method not allowed</h2>
		<img src="${contextPath }/resources/img/405.jpg" alt="404에러 이미지">
		<h4>관리자에게 연락주세요.</h4>
		<h4>관리자 이메일 : leebook@gmail.com</h4>
	</div>
</body>
</html>