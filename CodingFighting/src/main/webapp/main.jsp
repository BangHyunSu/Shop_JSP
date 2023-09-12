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
<title>Main Page</title>

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
	body>main>div.main_story>div a {
		text-decoration: none;
	}
	body>main>div.main-campaign>a {
		text-decoration: none;
	}
}
</style>


<!-- Custom styles for this template -->
</head>
<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
<link rel="icon" href="/favicon.ico" type="image/x-icon">
<body> 
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>

	<jsp:include page="navbar.jsp" flush="true" />

	<main>

		<div id="myCarousel"
			class="carousel carousel-dark slide carousel-fade"
			data-bs-ride="carousel" data-bs-interval="3000">
			<div class="carousel-indicators">
				<!--       <button type="button" data-bs-pause="hover" ></button> -->
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img
						src="https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/12/20/20221213_final_SENSUAL-NUDE-BALM-GLOSS_main_KV_pc.jpg">
					<svg class="bd-placeholder-img" width="100%" height="100%"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777" /></svg>
					<div class="container">
						<div class="carousel-caption text-end">
							<h1 style="font-weight: bold; font-size: 34px;">다음날까지 편안하고
								자유로운</h1>
							<h1 style="font-weight: bold; font-size: 34px;">맑은 컬러의 수분립밤</h1>
							<p style="margin-top: 20px; font-size: 16px;">NEW 센슈얼 누드 밤</p>
							<p>
								<a class="btn btn-lg btn-dark btn btn-outline-light" href="/category/makeup/lips.jsp"
									style="font-weight: bold; font-size: 14px;">자세히 보기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/09/13/20220923_final_HERA_main_KV_pc_02.jpg">
					<svg class="bd-placeholder-img" width="100%" height="100%"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777" /></svg>
					<div class="container">
						<div class="carousel-caption">
							<h1 style="font-weight: bold; font-size: 34px;">내 피부처럼 가벼운
								벨벳티 스킨</h1>
							<p style="margin-top: 20px; font-size: 16px;">블랙 쿠션</p>
							<p>
								<a class="btn btn-lg btn-dark btn btn-outline-light" href="/category/makeup/face.jsp"
									style="font-weight: bold; font-size: 14px;">자세히 보기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/12/13/20221212_final_SILKY-STAY-FOUNDATION_main_KV_pc.jpg">
					<svg class="bd-placeholder-img" width="100%" height="100%"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777" /></svg>
					<div class="container">
						<div class="carousel-caption text-start">
							<h1 style="font-weight: bold; font-size: 34px;">아침부터 저녁까지
								매끈한 피부결</h1>
							<p style="margin-top: 20px; font-size: 16px;">실키 스테이 파운데이션</p>
							<p>
								<a class="btn btn-lg btn-dark btn btn-outline-light" href="/category/makeup/face.jsp"
									style="font-weight: bold; font-size: 14px;">자세히 보기</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img
						src="https://www.hera.com/kr/ko/layout/main/upper-slide/__icsFiles/afieldfile/2022/09/19/20220919_final_SENSUAL-POWDER-MATTE-LIPSTICK_main_KV_pc.jpg">
					<svg class="bd-placeholder-img" width="100%" height="100%"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777" /></svg>
					<div class="container">
						<div class="carousel-caption text-start">
							<h1 style="font-weight: bold; font-size: 34px;">세상에 없던 NEW
								COMFORT MLBB</h1>
							<p style="margin-top: 20px; font-size: 16px;">센슈얼 파우더 매트 립스틱</p>
							<p>
								<a class="btn btn-lg btn-dark btn btn-outline-light" href="/category/makeup/lips.jsp"
									style="font-weight: bold; font-size: 14px;">자세히 보기</a>
							</p>
						</div>
					</div>
				</div>

			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div class="main-campaign">
			<h2 class="main_tit">SILKY STAY FOUNDATION</h2>
			<a href="/category/makeup/face.jsp">
				<div class="img" style="text-align: center;">
					<img
						src="https://www.hera.com/kr/ko/layout/main/campaign/__icsFiles/afieldfile/2022/05/27/20220531_final_main_campaign_img_pc.jpg"
						alt="Silky skin that stays with you all day"
						style='cursor: pointer;'>
				</div>
				<p class="main_sub">
					시간이 흘러도 하루 종일 아름다운 피부결 <img
						src="https://www.hera.com/kr/ko/resource/image/main/main_sub_arrow.png"
						alt="">
				</p>
			</a>
		</div>

		<div class="main_story">
			<div class="inner">
				<h2 class="main_tit">NEW SENSUAL NUDE BALM &amp; GLOSS</h2>
				<a href="/category/makeup/lips.jsp" class="img_link" ap-click-area="Main"
					ap-click-name="Click - Product Lineup"
					ap-click-data="NEW SENSUAL NUDE BALM &amp; GLOSS">
					<div class="img">
						<img
							src="https://www.hera.com/kr/ko/layout/main/story/__icsFiles/afieldfile/2022/12/21/20221213_final_SENSUAL-NUDE-BALM-GLOSS_main_story-banner.jpg"
							alt="BORN TO BE FREE">
					</div>
					<p class="main_sub">
						다음날까지 편안하고 자유로운 맑은 컬러의 수분립밤 <img
							src="https://www.hera.com/kr/ko/resource/image/main/main_sub_arrow.png"
							alt="">
					</p>
				</a>
				<div class="related_list">
					<div class="main_best_wrap">
						<h2 class="main_tit">BEST</h2>
						<ul>
							<li><a href="/category/makeup/lips.jsp" ap-click-area="Main"
								ap-click-name="Click - Product Lineup"
								ap-click-data="SENSUAL POWDER MATTE LIQUID"> <img
									src="https://www.hera.com/kr/ko/products/__icsFiles/afieldfile/2022/02/23/20220221_Sensual-Powder-Matte-Liquid_145_pdp_thumb_mo.png"
									alt="센슈얼 파우더 매트 리퀴드">
									<h3>센슈얼 파우더 매트 리퀴드</h3>
									<p>자세히 보기 &gt;</p>
							</a></li>
							<li><a href="/category/makeup/face.jsp" ap-click-area="Main"
								ap-click-name="Click - Product Lineup"
								ap-click-data="SILKY STAY 24H LONGWEAR SPF 20/ PA++"> <img
									src="https://www.hera.com/kr/ko/products/__icsFiles/afieldfile/2022/04/27/20220422_final_SILKY-STAY-FOUNDATION_thumbnail07_21N1_pc.jpg"
									alt="실키 스테이 24H 롱웨어 파운데이션 SPF 20 / PA++">
									<h3>실키 스테이 24H 롱웨어 파운데이션 SPF 20 / PA++</h3>
									<p>자세히 보기 &gt;</p>
							</a></li>
						</ul>
					</div>
					<div class="main_new_wrap">
						<h2 class="main_tit">NEW</h2>
						<ul>
							<li><a href="/category/makeup/lips.jsp" ap-click-area="Main"
								ap-click-name="Click - Product Lineup"
								ap-click-data="SENSUAL FITTING GLOW TINT"> <img
									src="https://www.hera.com/kr/ko/products/__icsFiles/afieldfile/2022/05/18/20220531_final_Sensual-Fitting-Glow-Tint_pdp_thumbnail01_pc.jpg"
									alt="센슈얼 피팅 글로우 틴트">
									<h3>센슈얼 피팅 글로우 틴트</h3>
									<p>자세히 보기 &gt;</p>
							</a></li>
							<li><a href="/category/makeup/face.jsp" ap-click-area="Main"
								ap-click-name="Click - Product Lineup"
								ap-click-data="HERA UV PROTECTOR TONE-UP SPF50+ / PA++++"> <img
									src="https://www.hera.com/kr/ko/products/__icsFiles/afieldfile/2022/02/10/20220210_final_hera-uv-protector-tone_up_pdp_thumb.png"
									alt="헤라 UV프로텍터 톤업 SPF50+ / PA++++">
									<h3>헤라 UV프로텍터 톤업 SPF50+ / PA++++</h3>
									<p>자세히 보기 &gt;</p>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp" flush="true" />
	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script src="/js/bootstrap.bundle.min.js"></script>


</body>
</html>