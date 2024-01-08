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
<title>contactDetail</title>
<script>
	$().ready(function() {
		$("#resolvedChange").click(function() {
			var resolvedValue = $("input[name='resolved']:checked").val();
			$.ajax({
				type : "POST",
				url : "${contextPath}/contact/modifyContact",
				data : { contactCd : "${contactDTO.contactCd}",
						resolved: resolvedValue}
			})
		})
	});
</script>
</head>
<body>
	<section class="checkout spad">
		<div class="container">
			<div class="checkout__form">
				<h4>고객문의확인</h4>
				<form >
					<div class="row">
                        <div class="col-lg-8 col-md-6">
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>아이디</strong><span>*</span></p>
										${contactDTO.memberId }
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>이메일</strong><span>*</span></p>
										${contactDTO.email }
									</div>
								</div>
							</div>
							
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>문의날짜</strong><span>*</span></p>
										<fmt:formatDate value="${contactDTO.enrollDt }" pattern="yyyy-MM-dd"/>
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>문의메세지</strong><span>*</span></p>
										${contactDTO.message }
									</div>
								</div>
							</div>
							<div class="row">
                                <div class="col-lg-6">
                                	<div class="checkout__input">
										<p><strong>답변상태</strong><span>*</span></p>
									</div>
										<input type="radio" name="resolved" value="답변대기중">답변대기중
										<input type="radio" name="resolved" value="답변완료">답변완료
								</div>
							</div>
							
							
							<button type="button" class="site-btn" id="resolvedChange">완료</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</section>
		
	
</body>
</html>