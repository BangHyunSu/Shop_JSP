<!doctype html>
<%@page import="service.ServiceDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="service.ServiceDAO"%>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.108.0">
<title>고객센터</title>
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
a, a:hover {
	color: #000000;
	text-decoration: none;
}
</style>
</head>
<body>
	<%
	String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	int pageNumber = 1; // 기본페이지 기본적으로 페이지 1부터 시작하므로
	if (request.getParameter("pageNumber") != null) {
		pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
				<table class="table table-striped"
					style="text-align: center; border: 1px solid #dddddd">
					<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;">번호</th>
							<th style="background-color: #eeeeee; text-align: center;">제목</th>
							<th style="background-color: #eeeeee; text-align: center;">작성자</th>
							<th style="background-color: #eeeeee; text-align: center;">작성일</th>
						</tr>
					</thead>
					<tbody>
						<%
						ServiceDAO serviceDAO = new ServiceDAO();
						ArrayList<ServiceDTO> list = serviceDAO.getList(pageNumber);
						for (int i = 0; i < list.size(); i++) {
						%>

						<tr>
							<!-- 						    BbsID가 아니라 number로 받아야 되는데 어떻게 할까 흠 -->
							<td><%=list.get(i).getBbsID()%></td>
							<!-- 특수문자를 제대로 출력하기위해 & 악성스크립트를 방지하기위해 -->
							<td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;")
		.replaceAll("\n", "<br>")%></a></td>
							<td><%=list.get(i).getUserID()%></td>
							<td><%=list.get(i).getBbsDate().substring(0, 16) /*+ list.get(i).getBbsDate().substring(11, 13) + "시" 
													+ list.get(i).getBbsDate().substring(14,16) + "분" */%></td>
						</tr>
						<%
						}
						%>
					</tbody>
				</table>
				<%
				if (pageNumber != 1) {
				%>
				<div>
					<a href="service.jsp?pageNumber=<%=pageNumber - 1%>"
						class="btn btn-success btn-arrow-left" style="float: right">이전</a>
				</div>
				<%
				}
				if (serviceDAO.nextPage(pageNumber + 1)) {
				%>
				<div>
					<a href="service.jsp?pageNumber=<%=pageNumber + 1%>"
						class="btn btn-success btn-arrow-left float-right"
						style="float: right">다음</a>
				</div>

				<%
				}
				%>
				<!-- 로그인이 되야지만 글쓰기 메뉴에 들어갈 수 있다. -->
				<%
				if (userID != null) {
				%>
				
				<div>
					<a href="write.jsp" class="btn btn-dark pull-right"
						style="float: right;">글쓰기</a>
				</div>
				
				<%
				}
				%>
				<%
				if (userID == null) {
				%>
				<div>
					<a href="login.jsp" class="btn btn-dark pull-right"
						style="float: right;" onClick="alert('로그인을 해주세요.')">글쓰기</a>
				</div>
				<%
				}
				%>

			</div>
		</div>
		<hr class="featurette-divider">
		<!-- FOOTER -->
		<a href="https://www.facebook.com/hera.kr" id="foot"
			style="margin-left: 820px;" target="_blank"><i
			class="fa-brands fa-facebook"></i></a> <a
			href="https://www.youtube.com/user/HeraKorea" id="foot"
			target="_blank"><i class="fa-brands fa-youtube"></i></a> <a
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