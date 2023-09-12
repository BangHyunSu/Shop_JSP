<%@page import="prod.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String cate = "메이크업-아이";
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/css/productList.css?after"
	rel="stylesheet">
<title>메이크업-아이</title>

</head>
<style>
</style>
<body>
	<jsp:include page="/navbar.jsp" flush="true" />
	<div class="container">
		<div class="header text-center">
			<h2>메이크업-아이</h2>
			<form action="/category&search/makeup/eyes.jsp" method="get">
			<input type="hidden" name="cate" value="메이크업-아이">
			<input class="inpName input_field" placeholder="상품명" type="text" name="pname">
			<input class="minPrice input_field" placeholder="최소가격" type="number" name="minPrice">
			<input class="maxPrice input_field" placeholder="최대가격" type="number" name="maxPrice">
			<input type="submit" class="search_Btn" value="검색">
			</form>
		</div>
		<hr>
		<div class="warpProdList">
		<div class="row row-cols-xl-5 row-cols-md-4 row-cols-sm-2 row-cols-xs-2 g-3">
			<%
			ProdDAO pDa = ProdDAO.getInstance();
			for (ProdDTO pDt : pDa.selectProdCate(cate)) {
			%>
			<div class="prod col">
			<div class="card shadow-sm">
			<div class="prodImg text-center">
				<img class="img-thumbnail border-3" alt="이미지영역" src="\imgs\<%=pDt.getFileName()%>" height="150px">
			</div>
			<div class="prodDiscrip card-body">
			<div class="card-text">
				<p>상품코드: <%=pDt.getNum()%></p>
				<p>상품이름: <%=pDt.getProdName()%></p>
				<p>남은 갯수: <%=pDt.getAmount()%></p>
				<p>가격: <%=pDt.getPrice()%></p>
				<div class="button d-flex justify-content-between align-items-center">
					<a class="btn btn-sm btn-outline-secondary"
						href="/productBuy.jsp?num=<%=pDt.getNum()%>">구매하기</a>
				</div>
				</div>
			</div>
			</div>
			</div>
			<%
			}
			%>
		</div>
		</div>
	</div>
	<jsp:include page="/footer.jsp" flush="true" />
</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script src="/js/bootstrap.bundle.min.js"></script>

</html>