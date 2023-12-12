<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bookDetail</title>
</head>
<body>
	<h3>도서상세조회</h3>
	<form>
		<c:if test="${memberDTO.memberId eq 'admin' }">
			<input type="button" value="도서정보수정하기" onclick="location.href='modifyBook?bookCd=${bookDTO.bookCd}'">
			<input type="button" value="도서정보삭제하기" onclick="location.href='removeBook?bookCd=${bookDTO.bookCd}'">
		</c:if>
		<table border="1">
			<tr>
				<td>${bookDTO.bookNm }</td>
			</tr>
			<tr>
				<td>${bookDTO.price }원</td>
			</tr>
			<tr>
				<td>저자 : ${bookDTO.writer }</td>
			</tr>
			<tr>
				<td>출판사 : ${bookDTO.publisher }</td>
			</tr>
			<tr>
				<td>총 ${bookDTO.totalPage} 페이지</td>
			</tr>
			<tr>
				<td>포인트 : ${bookDTO.point }</td>
			</tr>
			<tr>
				<td>
					<c:choose>
						<c:when test="${bookDTO.stock eq 0 }">
							<p>재고없음</p>
						</c:when>
						<c:otherwise>
							<p>재고있음</p>
						</c:otherwise>
					</c:choose>
				</td>
			</tr>
			<tr>
				<td>
					배송비 : ${bookDTO.deliveryPrice }
					<p>7만원이상 주문시 배송비 무료</p>
				</td>
				
			</tr>
			<tr>
				<td>
					<p>목차</p>
					<p>${bookDTO.contentsOrder }</p>
				</td>
			</tr>
			<c:if test="${bookDTO.writerIntro != null }">
				<tr>
					<td>저자서문</td>
					<td>${bookDTO.writerIntro }</td>
				</tr>
			</c:if>
			
			<c:if test="${bookDTO.publisherComment != null }">
				<tr>
					<td>출판서평</td>
					<td>${bookDTO.publisherComment }</td>
				</tr>
			</c:if>
			
			<c:if test="${bookDTO.recommendation != null }">
				<tr>
					<td>추천사</td>
					<td>${bookDTO.recommendation }</td>
				</tr>
			</c:if>
		</table>
		<c:choose>
			<c:when test="${bookDTO.stock ne 0 }">
				<input type="button" value="구매하기" onclick="location.href=''">
				<input type="button" value="장바구니" onclick="location.href=''">
			</c:when>
			<c:otherwise>
				<input type="button" value="구매하기" onclick="location.href=''" disabled>
				<input type="button" value="장바구니" onclick="location.href=''" disabled>
			</c:otherwise>
		</c:choose>
		
	</form>
</body>
</html>