<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>아이디 찾기</title>
<style>
	/* 폰트 */
@font-face {
	font-family: '양진체';
	src:
		url('https://cdn.jsdelivr.net/gh/supernovice-lab/font@0.9/yangjin.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'LeferiPoint-WhiteObliqueA';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/LeferiPoint-WhiteObliqueA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

/* 버튼 */
.btnSpace {
	margin-bottom: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}
.btnAdd{
	background-color: #73b1a1;
	border: 1px solid #F0FFC2;
	border-radius: 0.25rem;
	padding: 3px;
	padding-top: 10px;
	padding-left: 10px;
	padding-right: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	color: white;
	margin: 5px;
}

.btnAdd:hover{
	background-color: #F0FFC2;
	border: 1px solid #73b1a1;
	color: #73b1a1;
}

#message{
	font-family: 'LeferiPoint-WhiteObliqueA';
	text-align: center;
}
.empty{
	height: 20px;
}



</style>
</head>
<body>
	<div class="empty"></div>
	<div class="row" id="message">
		<div class="col-12">
			<h3>이름과 핸드폰번호를 입력해주세요.</h3>
			<h3>이메일 힌트를 알려드려요.</h3>
		</div>
	</div>
	<form id="searchForm" action="/searchUserId.user" method="post">
	<div class="row d-flex justify-content-center">
		<div class="col-5">
			<input type="text" class="form-control" id="user_name" name="user_name" placeholder="이름">
		</div>
		<div class="col-5">
			<input type="text" class="form-control" id="user_phone" name="user_phone" placeholder="핸드폰 번호 -제외">
		</div>
	</div>
	</form>
	<div class="empty"></div>
	<c:if test="${rs eq 'ok'}">
		<div class="row">
			<div class="col-12">
				<h2>회원님의 아이디는 : ${user_id}  입니다.</h2>
			</div>
		</div>
		<div class="empty"></div>
	</c:if>
	<c:if test="${rs eq 'no'}">
		<div class="row">
			<div class="col-12">
				<h2>일치하는 아이디가 없습니다.</h2>
			</div>
		</div>
		<div class="empty"></div>
	</c:if>
	<div class="row">
		<div class="col-12 d-flex justify-content-center">
			<button type="button" class="btnAdd btnSpace" id="checkBtn">확인</button>
			<button type="button" class="btnAdd btnSpace" id="closeBtn">취소</button>
		</div>
	</div>
	
	<script>
		$("#checkBtn").on("click", function(){
			if($("#user_name").val() === ""){
				alert("이름을 입력해주세요.");
				return;
			} else if ($("#user_phone").val() === ""){
				alert("핸드폰 번호를 입력해주세요.");
				return;
			}
			
			$("#searchForm").submit();			
		})
		
		$("#closeBtn").on("click", function(){
			self.close();
		})
	</script>
	
	
	
	
</body>
</html>