<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>findId</title>
<script>
	$().ready(function() {
		$("#birthDt").on("input",function(){
			var inputValue = $(this).val().replace(/[^0-9]/g, '');

            inputValue = inputValue.substring(0, 6);

            $(this).val(inputValue);
		})
		$("#hp").on("input",function(){
			var inputValue = $(this).val().replace(/[^0-9]/g, '');

            inputValue = inputValue.substring(0, 11);

            $(this).val(inputValue);
		})
	})
</script>
</head>
<body>
	<h3>아이디찾기</h3>
	<form action="${contextPath }/member/findId" method="post">
		<table border="1">
			<tr>
				<td>생년월일</td>
				<td>
					<input type="text" name="birthDt" id="birthDt" placeholder="6자리 숫자로만 입력하세요" maxlength="6">
				</td>
			</tr>
			<tr>
				<td>핸드폰번호</td>
				<td>
					<input type="text" name="hp" id="hp" placeholder="숫자로만 입력하세요" maxlength="11">
				</td>
			</tr>
		</table>
		<input type="submit" value="확인">
	</form>
</body>
</html>