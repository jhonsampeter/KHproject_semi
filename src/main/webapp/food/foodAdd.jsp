<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>식품 프로모션 등록페이지</title>
</head>
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
/* 폰트 끝 */
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}

.container {
	margin: auto;
}
/* 헤더 */
.cls_header {
	height: 150px;
	width: 100%;
	margin: 0%;
	background-color: #BFFFF0;
	color: #97C4B8;
	align-items: center;
	font-family: '양진체';
	text-align: center;
}

.cls_header a {
	color: #97C4B8;
}

.cls_header a:hover {
	color: #c9d4a9;
}

.dropdownBtn {
	background-color: #F0FFC2 !important;
	color: #97C4B8;
	border: 1px solid white;
}

.dropdownBtn:hover {
	color: #9be5d2;
}

.headDropdown {
	background-color: #F0FFC2 !important;
}

.headMenu {
	justify-content: end;
}
/* 로고 */
.logoImg {
	padding: 0%;
	filter: invert(87%) sepia(8%) saturate(806%) hue-rotate(113deg)
		brightness(86%) contrast(86%);
}

.logoImg:hover {
	filter: invert(75%) sepia(12%) saturate(803%) hue-rotate(52deg)
		brightness(99%) contrast(80%);
}
/* 로고 이미지 사이즈 */
.logoImg #logoImg {
	width: 50%;
	height: 50%;
}
/* 로고 효과 */
@import
	url('https://fonts.googleapis.com/css2?family=Alfa+Slab+One&display=swap')
	;

.logoImg {
	position: relative;
	display: inline-block;
	color: #fff;
	text-transform: uppercase;
	animation: waviy 1s infinite;
	animation-delay: calc(.1s * var(- -i));
}

@
keyframes waviy { 0%, 40%, 100% {
	transform: translateY(0)
}

20
%
{
transform
:
translateY(
-20px
)
}
}
/* 로고 효과 끝 */
/* 네비바 */
.navbar {
	background-color: #F0FFC2 !important;
	font-family: '양진체';
}

.container-fluid a {
	color: #97C4B8 !important;
}

.container-fluid a:hover {
	color: #9be5d2 !important;
}

.container-fluid button {
	background-color: #F0FFC2 !important;
	color: #97C4B8 !important;
}

.navDropdown {
	border: 1px solid white;
	background-color: #d5fcf3 !important;
}

.container-fluid button:hover {
	background-color: #97C4B8 !important;
	color: #F0FFC2 !important;
}

.container-fluid span {
	filter: invert(40%) sepia(4%) saturate(3907%) hue-rotate(113deg)
		brightness(103%) contrast(66%);
}

.navSearchInput {
	border: 1px solid white;
}

.navSearchInput::placeholder {
	color: #FFE4C0;
}
/* 공백 */
.empty {
	background-color: white;
	height: 20px;
}
/* 목록 */
.title {
	color: #97C4B8;
	border-bottom: 1px solid #97C4B8; -
	-bs-gutter-x: 0px;
	margin-bottom: 20px;
	margin-top: 10px;
	font-family: '양진체';
}

.card {
	width: 35rem;
	border: 1px solid #c9d4a9;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}

.card img {
	width: 100%;
	height: 20rem;
}

.card-title {
	margin-bottom: 0px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}

.card a {
	text-decoration: none;
	color: black;
}

.card h5 {
	padding: 20px;
}

.foodPromo {
	margin-bottom: 80px;
}

.btnSpace {
	margin-bottom: 10px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}

.input-group {
	width: 100%;
	margin-bottom: 10px;
}

.input-group-text {
	color: #97C4B8;
	background-color: #F0FFC2;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
}

.inputCls {
	width: 100%;
	font-weight: 600;
	border: 1px solid #c9d4a9;
}

.form-control:focus {
	outline: none;
}

textarea {
	resize: none;
	height: 150px;
}

input::placeholder, textarea::placeholder {
	color: #adcabf !important;
}

.btnSave, .btnAddPic, .btnCancle, .btnPics {
	background-color: #73b1a1;
	border: 1px solid #F0FFC2;
	border-radius: 0.25rem;
	padding: 3px;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 8px;
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-size: small;
	color: white;
	margin: 5px;
}

.btnSave:hover, .btnAddPic:hover, .btnCancle:hover, .btnPics:hover {
	background-color: #F0FFC2;
	border: 1px solid #73b1a1;
	color: #73b1a1;
}
/* footer */
.footer {
	font-family: 'LeferiPoint-WhiteObliqueA';
	font-weight: 600;
	font-size: small;
	color: #709c91;
	border-top: 1px solid #c9d4a9;
}

.footer .row {
	border-bottom: 1px solid #c9d4a9;
}

.footer .footerInfo {
	padding-block: 3%;
	text-align: center;
}

.footerMenu {
	padding-block: 2%;
	text-align: center;
}

.footerMenu a {
	color: #709c91;
	text-decoration: none;
}
</style>

<body>
	<div class="container">
		<div class="row cls_header">
			<div class="col-3 logoImg">
				<a href="/home"> <img id="logoImg" src="../imgs/dpt_Logo.png">
				</a>
			</div>
			<c:choose>
				<c:when
					test="${loginSession.user_auth eq 'member' || loginSession.user_auth eq 'admin'}">
					<div class="d-none d-md-block col-2"></div>
					<div class="col-3 p-0 headMenu d-flex justify-content-center">
						<span>${loginSession.user_name} 님 환영합니다!</span>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toMypage.user" style="text-decoration: none;"> <span>마이페이지</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/logout.user" style="text-decoration: none;"> <span>로그아웃</span>
						</a>
					</div>
				</c:when>
				<c:when test="${loginSession.user_auth eq 'manager'}">
					<div class="d-none d-md-block col-2"></div>
					<div class="col-3 p-0 headMenu d-flex justify-content-center">
						<span>관리자님 환영합니다!</span>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toSendmail.manager" style="text-decoration: none;">
							<span>메일보내기</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/userSerch.manager?curPage=1"
							style="text-decoration: none;"> <span>회원 검색</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/logout.user" style="text-decoration: none;"> <span>로그아웃</span>
						</a>
					</div>
				</c:when>
				<c:otherwise>
					<div class="d-none d-md-block col-5"></div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/login.user" style="text-decoration: none;"> <span>로그인</span>
						</a>
					</div>
					<div class="col p-0 headMenu d-flex justify-content-center">
						<a href="/toSignup.user" style="text-decoration: none;"> <span>회원가입</span>
						</a>
					</div>
				</c:otherwise>
			</c:choose>
			<div class="col p-0 headMenu d-flex justify-content-center">
				<button type="button" class="btn dropdownBtn dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false">고객센터</button>
				<ul class="dropdown-menu headDropdown">
					<li><a class="dropdown-item" href="/toInformation.info">자주
							묻는 질문</a></li>
					<li><a class="dropdown-item" href="#">이벤트</a></li>
					<c:if test="${loginSession.user_auth eq 'manager'}">
						<li><a class="dropdown-item" href="/modifyList.food?curPage=1">음식 프로로션</a></li>
					</c:if>
				</ul>
			</div>
		</div>
		<!-- 헤더 끝 -->
		<!-- 네비 -->
		<div class="row cls_nav">
			<div class="col">
				<nav class="navbar navbar-expand-lg navbar-dark bg-warning">
					<div class="container-fluid">
						<button class="navbar-toggler" type="button"
							data-bs-toggle="collapse"
							data-bs-target="#navbarSupportedContent"
							aria-controls="navbarSupportedContent" aria-expanded="false"
							aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav me-auto mb-2 mb-lg-0">
								<li class="nav-item"><a class="nav-link active"
									aria-current="page" href="#">칼럼</a></li>
								<li class="nav-item"><a class="nav-link" href="/list.gym">내
										주변 운동시설</a></li>
								<li class="nav-item"><a class="nav-link" href="/list.food">특가
										식품</a></li>
								<li class="nav-item dropdown"><a
									class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
									role="button" data-bs-toggle="dropdown" aria-expanded="false">
										근육별 운동법 </a>
									<ul class="dropdown-menu navDropdown"
										aria-labelledby="navbarDropdown">
										<li><a class="dropdown-item" href="#">상체</a></li>
										<li><a class="dropdown-item" href="#">하체</a></li>
										<li><a class="dropdown-item" href="#">몸통</a></li>
										<li><a class="dropdown-item" href="#">전체보기</a></li>
									</ul></li>
							</ul>
							<form action="search.gym" method="post" class="d-flex searchForm">
								<input class="form-control navSearchInput me-2" type="search"
									placeholder="운동시설 검색" aria-label="Search">
								<button class="btn btn-outline-light" type="button">Search!</button>
							</form>
						</div>
					</div>
				</nav>
			</div>
		</div>
		<!-- 네비 끝 -->
		<!-- 식품 프로모션 목록 -->
		<div class="empty"></div>
		<div class="row title">
			<div class="col d-flex justify-content-center">
				<h1>식품 프로모션 등록</h1>
			</div>
		</div>
		<div class="foodPromo">
			<form id="addForm" action="/addProc.food" method="post"
				enctype="multipart/form-data">
				<div class="row cardList">
					<div class="col d-flex justify-content-center">
						<div class="card">
							<img src="" class="card-img-top" id="food_src_img">
							<%-- 사진 등록 --%>
							<label class="btn btnPics" for="food_src">사진 등록</label> <input
								type="file" class="form-control inputCls" id="food_src"
								name="food_src" style="display: none;">
							<div class="card-body">
								<div class="input-group">
									<span class="input-group-text">제품명</span> <input
										class="form-control inputCls p-3" type="text" id="food_name"
										name="food_name" placeholder="테마가 있다면 [테마명]제품명 형식">
								</div>
								<div class="input-group">
									<span class="input-group-text">설명</span> <input
										class="form-control inputCls" type="text" id="food_title"
										name="food_title" placeholder="제품설명 입력">
								</div>
								<div class="input-group">
									<span class="input-group-text">가격</span> <input
										class="form-control inputCls" type="text" id="food_price"
										name="food_price" placeholder="숫자만 입력">
								</div>
								<div class="input-group">
									<span class="input-group-text">링크주소</span>
									<textarea class="form-control inputCls" id="food_com"
										name="food_com" placeholder="링크주소 입력"></textarea>
								</div>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="empty"></div>
		<div class="row">
			<div class="col btnSpace d-flex justify-content-center">
				<button class="btn btnCancle" type="button">취소</button>
				<button class="btn btnSave" type="button">저장</button>
			</div>
		</div>
		<div class="empty"></div>
		<!-- footer -->
		<div class="container footer">
			<div class="row footerInfo">
				<div class="col-6">
					제휴 및 서비스 이용문의<br>
					<h3 style="margin-top: 10px; font-weight: 600;">1588-0000</h3>
					AM 09:00 - PM 06:00<br> 토 일 공휴일 휴무
				</div>
				<div class="col-6">
					(주)당퍼트<br> 서울특별시 영등포구 선유동2로 57<br> 대표 : 홍신영<br>
					사업자번호 : 123-45-67890<br> 통신판매번호 : 제2000-서울영등포구-0000호<br>
					kh.projectmail@gmail.com<br>
				</div>
			</div>
			<div class="row footerMenu">
				<div class="col">
					<a href="">이용약관</a>
				</div>
				<div class="col">
					<a href="">개인정보처리방침</a>
				</div>
				<div class="col">
					<a href="">위치정보이용약관</a>
				</div>
				<div class="col">
					<a href="">센터등록요청하기</a>
				</div>
				<div class="col">
					<a href="">문의하기</a>
				</div>
			</div>
			<p>Copyright ⓒ Dangpert Co., Ltd. All rights reserved.</p>
		</div>
		<!-- footer 끝 -->
	</div>
	<script>
    $(".btnCancle").on("click", function(){
    	location.href = "/modifyList.food?curPage=1";
	})
	
	$(".btnSave").on("click", function(){
		let regexPrice = /[0-9]/;
		
		if ($("#food_src").val() === "") {
			alert("사진 등록은 필수입니다.");
			$("#food_src").focus();
			return;
		}
		if ($("#food_name").val() === "") {
			alert("제품명을 입력하세요.");
			$("#food_name").focus();
			return;
		}
		if ($("#food_title").val() === "") {
			alert("설명을 입력하세요.");
			$("#food_title").focus();
			return;
		}
		if (!regexPrice.test($("#food_price").val())) {
			alert("가격을 숫자로 입력하세요.");
			$("#food_price").focus();
			return;
		}
		if ($("#food_com").val() === "") {
			alert("링크주소를 입력하세요.");
			$("#food_com").focus();
			return;
		}
		$("#addForm").submit();
	})
	
	// 이미지 미리보기
	$("#food_src").change(function(){
    	setImageFromFile(this, "#food_src_img");
	});
	function setImageFromFile(input, expression) {
    	if (input.files && input.files[0]) {
        	var reader = new FileReader();
        	reader.onload = function (e) {
          	  $(expression).attr("src", e.target.result);
        	}
        reader.readAsDataURL(input.files[0]);
    	}
	}
	
	function numbeComma(number) {    
		return number.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");}
    </script>
</body>
</html>