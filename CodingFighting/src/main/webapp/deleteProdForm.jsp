<%@page import="prod.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매상품 삭제</title>
</head>
<link href="/css/bootstrap.min.css" rel="stylesheet">
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#000000),
		to(#000000));
	background: -webkit-linear-gradient(bottom left, #000000 0%, #000000 100%);
	background: -moz-linear-gradient(bottom left, #000000 0%, #000000 100%);
	background: -o-linear-gradient(bottom left, #000000 0%, #000000 100%);
	background: linear-gradient(to top right, #000000 0%, #fafafa 100%);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}
</style>
<body>
	<jsp:include page="/navbar.jsp" flush="true" />
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">상품 삭제</h4>
				<form action="deleteProd.jsp" method="post">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="num">상품고유번호 </label><input type="text"
								class="form-control" name="num">
							<div class="invalid-feedback"></div>
						</div>
					</div>
					<div class="col-auto">
						<input class="btn btn-secondary  form-check" type="reset"
							value="초기화" /> <input class="btn btn-primary btn-lg float-end"
							type="submit" value="삭제" />

					</div>
				</form>
				<br>
				<button class="btn btn-secondary "
					onclick="location.href='/main.jsp'">나가기</button>
					<jsp:include page="/footer.jsp" flush="true" />
			</div>
		</div>
			
	</div>






	<!-- <form action ="deleteProd.jsp" method="post">
<table border="1">
<tr><td>상품번호</td><td><input type="text" name="num"/></td></tr>
<input type="reset" value="초기화"/>
<input type="submit" value="저장"/></td></tr> -->
</body>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script src="/js/bootstrap.bundle.min.js"></script>
</html>