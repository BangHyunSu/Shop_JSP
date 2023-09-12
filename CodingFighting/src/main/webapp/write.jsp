<!doctype html>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.108.0">
<title>QnA 글쓰기</title>

<link href="/css/bootstrap.min.css" rel="stylesheet">
<link href="/css/carousel.css" rel="stylesheet">

<style>
/*    font awesome cdn */
@import
	url("https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css");

#img_btn {
	/*    		color: rgb(169, 169, 169); */
	color: rgba(255, 255, 255, 0.75);
	font-size: 20px;
	padding: 5px;
}

#foot {
	font-size: 26px;
	color: rgba(169, 169, 169);
	padding: 20px;
}

/*     navbar */
body>header>nav {
	position: absolute;
	height: 80px;
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

body>main>div {
	margin-top: 55px;
}
</style>

</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
		log(userID);
	}
	%>

	<header>
		<!--     aria-currnet="" 페이지 이름 명명 -->
		<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark"
			style="height: 80px; background: black;">
			<div class="container-fluid">
				<a class="navbar-brand" href="/main.jsp"
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
								<li><a class="dropdown-item" href="/brand.jsp" style="">브랜드
										소개</a></li>
								<li><a class="dropdown-item" href="/map.jsp">오시는 길</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white; font-size: 16px; font-weight: 600; margin-left: 27px">
								메이크업 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item"
									href="/category/makeup/face.jsp">페이스</a></li>
								<li><a class="dropdown-item"
									href="/category/makeup/lips.jsp">립</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
								<li><a class="dropdown-item"
									href="/category/makeup/eyes.jsp">아이</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white; font-size: 16px; font-weight: 600; margin-left: 27px">
								스킨케어 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item"
									href="/category/skincare/cleansing.jsp">클렌징</a></li>
								<li><a class="dropdown-item"
									href="/category/skincare/skin-lotion.jsp">스킨/로션</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
								<li><a class="dropdown-item"
									href="/category/skincare/mask-pack.jsp">마스크/팩</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link active"
							href="/service.jsp"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">고객센터</a>
						</li>
						<%
						if (userID != null && userID.equals("admin")) {
						%>
						<li class="nav-item"><a class="nav-link active"
							href="/uploadProdForm.jsp"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">상품등록</a>
						</li>
						<li class="nav-item"><a class="nav-link active"
							href="/deleteProdForm.jsp"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">상품삭제</a>
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

		<div class="container">
			<div class="row">
				<form method="post" action="writeAction.jsp">
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th colspan="2"
									style="background-color: #eeeeee; text-align: center;">게시판
									글쓰기 양식</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="text" class="form-control"
									placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
							</tr>
							<tr>
								<td><textarea class="form-control" placeholder="글 내용"
										name="bbsContent" maxlength="2048" style="height: 350px"></textarea></td>
							</tr>
						</tbody>
					</table>
					<input type="submit" class="btn btn-dark pull-right" value="글쓰기"
						style="float: right;">
				</form>
			</div>
		</div>


		<hr class="featurette-divider">
		<!-- FOOTER -->
		<a href="https://www.facebook.com/hera.kr" id="foot"
			style="margin-left: 820px;" target="_blank"><i
			class="fa-brands fa-facebook"></i></a> <a
			href="https://www.youtube.com/user/HeraKorea" id="foot"
			target="_blank"><i class="fa-wbrands fa-youtube"></i></a> <a
			href="https://www.instagram.com/herabeauty_official/" id="foot"
			target="_blank"><i class="fa-brands fa-instagram"></i></a> <a
			href="https://pf.kakao.com/_dbxjxnK" id="foot" target="_blank"><i
			class="fa-brands fa-kickstarter"></i></a>
		<footer class="container">
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