<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/main.css" rel="stylesheet">
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<<style>
@import
	url("https://pro.fontawesome.com/releases/v6.0.0-beta1/css/all.css");
	
	#img_btn {
	/*          color: rgb(169, 169, 169); */
	color: rgba(255, 255, 255, 0.75);
	font-size: 20px;
	padding: 5px;
}
	
	body > nav {
	opacity: 0.8;
	}
</style>
<title>navbar</title>

	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
	<!--     aria-currnet="" 페이지 이름 명명 -->
	<nav class="navbar navbar-expand-lg navbar-dark fixed-top bg-dark"
			style="height: 80px; background: linear-gradient(307deg, #cdcfd1 4%, rgb(0 0 0) 88%, rgb(0, 0, 0) 100%);">
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
								<li><a class="dropdown-item" href="/brand.jsp" style="">브랜드 소개</a></li>
								<li><a class="dropdown-item" href="/map.jsp">오시는 길</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white; font-size: 16px; font-weight: 600; margin-left: 27px">
								메이크업 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/category/makeup/face.jsp">페이스</a></li>
								<li><a class="dropdown-item" href="/category/makeup/lips.jsp">립</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
								<li><a class="dropdown-item" href="/category/makeup/eyes.jsp">아이</a></li>
							</ul></li>
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" role="button"
							data-bs-toggle="dropdown" aria-expanded="false"
							style="color: white; font-size: 16px; font-weight: 600; margin-left: 27px">
								스킨케어 </a>
							<ul class="dropdown-menu">
								<li><a class="dropdown-item" href="/category/skincare/cleansing.jsp">클렌징</a></li>
								<li><a class="dropdown-item" href="/category/skincare/skin-lotion.jsp">스킨/로션</a></li>
								<!--             <li><hr class="dropdown-divider"></li> -->
								<li><a class="dropdown-item" href="/category/skincare/mask-pack.jsp">마스크/팩</a></li>
							</ul></li>
						<li class="nav-item"><a class="nav-link active" href="/service.jsp"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">고객센터</a>
						</li>
						<%
						if (userID != null && userID.equals("admin")) {
						%>
						<li class="nav-item"><a class="nav-link active"
							href="/uploadProdForm.jsp"
							style="font-size: 16px; font-weight: 600; margin-left: 27px">상품등록</a>
						</li>
						<li class="nav-item"><a class="nav-link active" href="/deleteProdForm.jsp"
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
					<a href="/login.jsp" class="btm_login" id="img_btn"><i class="fa-solid fa-right-to-bracket"></i></a>
					 <a href="/myPage.jsp" class="btm_myPage" id="img_btn"> <i class="fa-regular fa-user"></i></a>
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
