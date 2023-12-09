<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}"  />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>insertMember</title>
<script>
 var validateMemberId = false;

	$().ready(function() {
		
		$("#btnOverlapped").click(function(){
		    var memberId = $("#memberId").val();
		    if (memberId == '') {
		   		alert("ID를 입력하세요.");
		   		return;
		    }
		   
		    $.ajax({
		       type : "post",
		       url : "${contextPath}/member/overlappedId",
		       data : {"memberId" : memberId},
		       success : function(checkId){
		          if (checkId == "N"){
		          	alert("사용할 수 있는 ID입니다.");
		          	validateMemberId = true;
		          }
		          else {
		          	alert("사용할 수 없는 ID입니다.");
		          	validateMemberId = false;
		          }
		       }
		    });
		});	
		$().ready(function() {
		    $('#passwd').on('input', function() {
		        validatePassword();
		    });

		    function validatePassword() {
		        var password = $('#passwd').val();
		     
		        var regex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{10,}$/;

		        if (!regex.test(password)) {
		            $('#passwordMessage').text('비밀번호는 영문과 숫자를 조합하여 10자 이상으로 입력해야 합니다.');
		        } else {
		            $('#passwordMessage').text('');
		        }
		    }
		})
		$().ready(function() {
       
            $("#birthDt").on("input", function() {
              
                var inputValue = $(this).val().replace(/[^0-9]/g, '');

                inputValue = inputValue.substring(0, 6);

                $(this).val(inputValue);
            });
        });
		
		$().ready(function() {
       
            $("#hp").on("input", function() {
              
                var inputValue = $(this).val().replace(/[^0-9]/g, '');

                inputValue = inputValue.substring(0, 11);

                $(this).val(inputValue);
            });
        });
		
		
		$("form").submit(function(){
			
			if (!validateMemberId) {
				alert("아이디를 확인해주세요.");
				return false;
			}
			
			
		});
		
	});

	
 </script>
</head>
<body>
	<form action="${contextPath }/member/addMember" method="post">
		<h3>회원가입</h3>
		<table border="1">
			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="memberId" id="memberId" maxlength="15" placeholder="아이디를 입력하세요" size="30"/>
					<input type="button"  id="btnOverlapped" value="아이디중복확인"/>
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="passwd" id="passwd" minlength="10" placeholder="영문숫자를 조합하여 10자 이상 입력하세요" size="40" required>
				</td>
			</tr>
			<tr>
			    <td colspan="2">
			        <div id="passwordMessage" style="color: red;"></div>
			    </td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" name="memberNm" placeholder="이름을 입력하세요" size="30" required>
				</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					<input type="radio" name="sex" value="m">남성
					<input type="radio" name="sex" value="w">여성
				</td>		
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
					<input type="text" name="birthDt" id="birthDt" maxlength="6" placeholder="6자리 숫자로 입력하세요" size="30"  required>
				</td>
			</tr>
			<tr>
				<td>휴대폰번호</td>
				<td>
					<input type="text" name="hp" id="hp"  placeholder="숫자로만 입력하세요" maxlength="11" size="30" required>
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>
					<input type="email" name="email" required>
				</td>
			</tr>	
		</table>
		<input type="submit" value="회원가입하기" >
	</form>
</body>
</html>