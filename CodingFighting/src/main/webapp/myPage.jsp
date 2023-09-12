<!doctype html>
<%@page import="user.*"%>
<%@ page import="java.io.PrintWriter"%>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.108.0">
<title>My Page</title>

<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/carousel.css" rel="stylesheet">
<link href="/css/main.css" rel="stylesheet">
<style>
/*    font awesome cdn */
@import
	url("https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css");

#img_btn {
	/*          color: rgb(169, 169, 169); */
	color: rgba(255, 255, 255, 0.75);
	font-size: 20px;
	padding: 5px;
}

.b-example-divider {
	height: 3rem;
	background-color: rgba(0, 0, 0, .1);
	border: solid rgba(0, 0, 0, .15);
	border-width: 1px 0;
	box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em
		rgba(0, 0, 0, .15);
}

.b-example-vr {
	flex-shrink: 0;
	width: 1.5rem;
	height: 100vh;
}

.bi {
	vertical-align: -.125em;
	fill: currentColor;
}

/*     navbar */
body>header>nav {
	position: relative;
	height: 80px;
	opacity: 0.8;
}

#foot {
	font-size: 26px;
	color: rgba(169, 169, 169);
	padding: 20px;
}

/*     Carousel 자세히 보기 버튼의 border*/
#myCarousel>div.carousel-inner>div.carousel-item.active>div>div>p:nth-child(4)>a
	{
	border: 1px solid black;
}

#myCarousel>div.carousel-inner>div.carousel-item.active>div>div>p:nth-child(3)>a
	{
	border: 1px solid black;
}

#myCarousel>div.carousel-inner>div.carousel-item.active>div>div>p:nth-child(2)>a
	{
	border: 1px solid black;
}

#myCarousel>div.carousel-inner>div.carousel-item.active>div>div>p:nth-child(1)>a
	{
	border: 1px solid black;
}

/*     메인페이지 Carousel 크기 조정 */
#myCarousel>div.carousel-inner {
	height: 685px;
	margin-top: -45px;
}

.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	z -moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
	.nav-scroller {
		position: relative;
		z-index: 2;
		height: 2.75rem;
		overflow-y: hidden;
	}
	.nav-scroller .nav {
		display: flex;
		flex-wrap: nowrap;
		padding-bottom: 1rem;
		margin-top: -1px;
		overflow-x: auto;
		text-align: center;
		white-space: nowrap;
		-webkit-overflow-scrolling: touch;
	}
	body>main>div.main_story>div>a {
		text-decoration: none;
	}
}

.container {
	margin-top: 100px
}

#foot {
	margin-lefe: 300px
}
</style>


<!-- Custom styles for this template -->
</head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<body>
	<%
	request.setCharacterEncoding("UTF-8");

	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");

	}
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 해주세요')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>


	<header>
		<!--     aria-currnet="" 페이지 이름 명명 -->
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark"
			style="height: 80px; background: black;">
			<div class="container-fluid">
				<a class="navbar-brand" href="main.jsp"
					style="font-size: 28px; margin-left: 305px; font-weight: bold;">H
					E R A</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-config="autoClose" data-bs-toggle="dropdown"
							aria-expanded="false"
							style="margin-left: 41px; color: white; font-size: 16px; font-weight: 600;">
								헤라 스토리 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#" style="">브랜드 소개</a></li>
								<li><a class="dropdown-item" href="#">오시는 길</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white; font-size: 16px; font-weight: 600; margin-left: 27px">
								메이크업 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">페이스</a></li>
								<li><a class="dropdown-item" href="#">립</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
								<li><a class="dropdown-item" href="#">아이</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white; font-size: 16px; font-weight: 600; margin-left: 27px">
								스킨케어 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="#">클렌징</a></li>
								<li><a class="dropdown-item" href="#">스킨/로션</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
								<li><a class="dropdown-item" href="#">마스크/팩</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link active" href="#"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">고객센터</a>
						</li>
						<%
						if (userID != null && userID.equals("admin")) {
						%>
						<li class="nav-item"><a class="nav-link active"
							href="/sellPage.jsp"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">상품등록</a>
						</li>
						<%
						}
						%>
					</ul>
					<%
					if (userID != null) {
					%>
					<a href="/logout.jsp" class="btm_login" id="img_btn"> <i
						class="fa-solid fa-right-from-bracket"></i></a> <a href="/myPage.jsp"
						class="btm_myPage" id="img_btn"> <i class="fa-solid fa-user"></i></a>
					<%
					}
					%>

					<%
					if (userID == null) {
					%>
					<a href="/login.jsp" class="btm_login" id="img_btn"> <i
						class="fa-solid fa-right-to-bracket"></i></a> <a href="/myPage.jsp"
						class="btm_myPage" id="img_btn"> <i class="fa-regular fa-user"></i></a>
					<%
					}
					%>

					<a href="/cart.jsp" class="btm_cart" id="img_btn"
						style="margin-right: 269px"> <i
						class="fa-solid fa-cart-shopping"></i></a>
					<!--  </form> -->
				</div>
			</div>
		</nav>
	</header>

	<main>
		<%
		UserDAO DAO = new UserDAO();
		UserDTO DTO = DAO.getUser(userID);
		%>

		<div class="container">
			<div class="input-form-backgroud row">
				<div class="input-form col-md-12 mx-auto">
					<h4 class="mb-3">마이페이지</h4>
					<form method="post" action="/userUpdateAction.jsp"
						onsubmit="return check();">
						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="name">이름</label> <input type="text"
									class="form-control" name="userName"
									value="<%=DTO.getUserName()%>">
								<!--                         <div class="invalid-feedback">이름을 입력해주세요.</div> -->
							</div>
						</div>

						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="ID">아이디</label> <input type="text"
									class="form-control" name="userID" value="<%=DTO.getUserID()%>"
									readonly="readonly">
								<div class="invalid-feedback">아이디를 입력해주세요.</div>
							</div>
						</div>

						<div class="row">
							<div class="col-md-6 mb-3">
								<label for="password">비밀번호</label> <input type="password"
									class="form-control" name="userPW">
								<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
							</div>
						</div>

						<div class="mb-3">
							<label for="address">주소</label> <input type="text"
								class="form-control" name="userAddress"
								value="<%=DTO.getUserAddress()%>">
							<div class="invalid-feedback">주소를 입력해주세요.</div>
						</div>

						<div class="mb-3">
							<label for="address">연락처</label> <input type="text"
								class="form-control" name="phonNum"
								value="<%=DTO.getPhonNum()%>">
							<div class="invalid-feedback">연락처를 입력해주세요.</div>
						</div>

						<div class="row">
							<div class="">
								<div class="col-md-6 mb-3"></div>
								<button class="btn btn-dark btn-lg btn-block" type="submit">수정
									완료</button>
							</div>
						</div>
					</form>
					<form method="post" action="/deleteForm.jsp"
						onsubmit="return check();">
						<div class="col-md-6 mb-3"></div>
						<button class="btn btn-dark btn-lg btn-block" type="submit">회원
							탈퇴</button>
					</form>
				</div>
			</div>



			<hr class="featurette-divider">
			<!-- FOOTER -->

			<footer class="container">
				<a href="https://www.facebook.com/hera.kr" id="foot"
					style="margin-left: 500px;" target="_blank"><i
					class="fa-brands fa-facebook"></i></a> <a
					href="https://www.youtube.com/user/HeraKorea" id="foot"
					target="_blank"><i class="fa-brands fa-youtube"></i></a> <a
					href="https://www.instagram.com/herabeauty_official/" id="foot"
					target="_blank"><i class="fa-brands fa-instagram"></i></a> <a
					href="https://pf.kakao.com/_dbxjxnK" id="foot" target="_blank"><i
					class="fa-brands fa-kickstarter"></i></a>
				<p class="float-end">
					<a href="#"><i class="fa-solid fa-circle-up"
						style="color: #b8b9ba; font-size: 30px;"></i></a>
				</p>
				<p>&copy; © AMOREPACIFIC CORPORATION. All rights reserved.</p>
			</footer>
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script src="/js/bootstrap.bundle.min.js"></script>

</body>
</html>