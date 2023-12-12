<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modifyBook</title>
</head>
<body>
	<h3>도서정보수정</h3>
		<form action="${contextPath }/book/modifyBook" method="post">
			<table style="width: 700px;" border="1">
				<tr>
			        <td><img src="${contextPath }/member/thumbnails?fileName=${bookDTO.imgNm}" width="50" height="50" alt="사진"></td>
			        <td>
			        	<input type="file" name="imgNm"/>
			        	<input type="hidden" name="beforeFileName" value="${memberDTO.imgNm}"/>
			        </td>
	        	</tr>
				<tr>
					<td>도서제목</td>
					<td><input type="text" name="bookNm" value="${bookDTO.bookNm }" size="70"/></td>
				</tr>
				<tr>
					<td>저자</td>
					<td><input type="text" name="writer" value="${bookDTO.writer }" size="70"/></td>
				</tr>
				<tr>
					<td>가격</td>
					<td>
						<input type="number" name="price" value="${bookDTO.price }">
					</td>
				</tr>
				<tr>
					<td>할인률</td>
					<td>
						<input type="number" name="discountRt" value="${bookDTO.discountRt }">
					</td>
				</tr>
				<tr>
					<td>재고</td>
					<td>
						<input type="number" name="stock" value="${bookDTO.stock }">
					</td>
				</tr>
				<tr>
					<td>출판사</td>
					<td>
						<input type="text" name="bookCd" value="${bookDTO.publisher }">
					</td>
				</tr>
				<tr>
					<td>분류</td>
					<td>
						<input type="text" name="sort" value="${bookDTO.sort }">
					</td>
				</tr>
				<tr>
					<td>포인트</td>
					<td>
						<input type="number" name="point" value="${bookDTO.point }">
					</td>
				</tr>
				<tr>
					<td>출판일</td>
					<td>
						<input type="date" name="publishedDt" value="${bookDTO.publishedDt }">
					</td>
				</tr>
				<tr>
					<td>총페이지</td>
					<td>
						<input type="number" name="totalPage" value="${bookDTO.totalPage }">
					</td>
				</tr>
				<tr>
					<td>ISBN</td>
					<td>
						<input type="text" name="isbn" value="${bookDTO.isbn }">
					</td>
				</tr>
				<tr>
					<td>배송료</td>
					<td>
						<input type="number" name="deliveryPrice" value="${bookDTO.deliveryPrice }">
					</td>
				</tr>
				<tr>
					<td>도서분류</td>
					<td>
						<input type="text" name="part" value="${bookDTO.part }">
					</td>
				</tr>
				<tr>
					<td>저자서문</td>
					<td>
						<textarea rows="10" cols="40" name="writerIntro">${bookDTO.writerIntro }</textarea>
					</td>
				</tr>
				<tr>
					<td>목차</td>
					<td>
						<textarea rows="10" cols="40" name="contentsOrder">${bookDTO.contentsOrder }</textarea>
					</td>
				</tr>
				<tr>
					<td>설명</td>
					<td>
						<textarea rows="10" cols="40" name="intro">${bookDTO.intro }</textarea>
					</td>
				</tr>
				<tr>
					<td>출판사평</td>
					<td>
						<textarea rows="10" cols="40" name="publisherComment">${bookDTO.publisherComment }</textarea>
					</td>
				</tr>
				<tr>
					<td>추천사</td>
					<td>
						<textarea rows="10" cols="40" name="recommendation">${bookDTO.recommendation }</textarea>
					</td>
				</tr>
			</table>
			<input type="submit" value="수정하기">
			<input type="hidden" name="bookCd" value="${bookDTO.bookCd }">
		</form>
</body>
</html>