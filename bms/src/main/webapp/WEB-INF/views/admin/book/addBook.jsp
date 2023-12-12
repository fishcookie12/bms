<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addBook</title>
</head>
<body>
<h3>도서등록하기</h3>
	<form action="${contextPath }/book/addBook" method="post">
		<table border="1">
			<tr>
		        <td>도서이미지</td>
		        <td><input type="file" name="imgNm" /></td>
	        </tr>
			<tr>
				<td>도서제목</td>
				<td>
					<input type="text" name="bookNm">
				</td>
			</tr>
			<tr>
				<td>저자</td>
				<td>
					<input type="text" name="writer">
				</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>
					<input type="number" name="price">
				</td>
			</tr>
			<tr>
				<td>할인률</td>
				<td>
					<input type="number" name="discountRt">
				</td>
			</tr>
			<tr>
				<td>재고</td>
				<td>
					<input type="number" name="stock">
				</td>
			</tr>
			<tr>
				<td>출판사</td>
				<td>
					<input type="text" name="publisher">
				</td>
			</tr>
			<tr>
				<td>분류</td>
				<td>
					<input type="text" name="sort">
				</td>
			</tr>
			<tr>
				<td>포인트</td>
				<td>
					<input type="number" name="point">
				</td>
			</tr>
			<tr>
				<td>출판일</td>
				<td>
					<input type="date" name="publishedDt">
				</td>
			</tr>
			<tr>
				<td>총페이지</td>
				<td>
					<input type="number" name="totalPage">
				</td>
			</tr>
			<tr>
				<td>ISBN</td>
				<td>
					<input type="text" name="isbn">
				</td>
			</tr>
			<tr>
				<td>배송료</td>
				<td>
					<input type="number" name="deliveryPrice">
				</td>
			</tr>
			<tr>
				<td>도서분류</td>
				<td>
					<input type="text" name="part">
				</td>
			</tr>
			<tr>
				<td>저자서문</td>
				<td>
					<textarea rows="10" cols="40" name="writerIntro"></textarea>
				</td>
			</tr>
			<tr>
				<td>목차</td>
				<td>
					<textarea rows="10" cols="40" name="contentsOrder"></textarea>
				</td>
			</tr>
			<tr>
				<td>설명</td>
				<td>
					<textarea rows="10" cols="40" name="intro"></textarea>
				</td>
			</tr>
			<tr>
				<td>출판사평</td>
				<td>
					<textarea rows="10" cols="40" name="publisherComment"></textarea>
				</td>
			</tr>
			<tr>
				<td>추천사</td>
				<td>
					<textarea rows="10" cols="40" name="recommendation"></textarea>
				</td>
			</tr>
		</table>
		<input type="submit" value="등록">
	</form>
</body>
</html>