<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyMember</title>
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
	<h3>회원정보수정</h3>
	<form action="${contextPath }/member/modifyMember" method="post">
		<table>
			<tr>
				<td>비밀번호수정</td>
				<td><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td>휴대폰번호수정</td>
				<td><input type="text" name="hp" id="id" placeholder="숫자로만 입력하세요" ></td>
			</tr>
			<tr>
				<td>이메일수정</td>
				<td><input type="email" name="email"></td>
			</tr>
		
		</table>
		<input type="submit" value="수정하기" >
	</form>
</body>
</html>