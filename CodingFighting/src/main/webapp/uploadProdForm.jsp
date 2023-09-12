<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<%@page import="prod.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매상품 등록</title>

<!-- Bootstrap CSS -->
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
</head>
<body>
	<jsp:include page="/navbar.jsp" flush="true" />
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");

	}
	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('관리자 로그인을 해주세요')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
		script.close();
		return;
	}
	%>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h3 class="mb-3">상품 등록</h3>
				<form action="upload.jsp" method="post"
					enctype="multipart/form-data">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label class="form-label" for="maker">제조사</label> <input
								type="text" class="form-control" name="maker">
							<div class="invalid-feedback">제조사를 입력하세요.</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label class="form-label" for="prodname">상품명</label> <input
								type="text" class="form-control" name="prodName">
							<div class="invalid-feedback">상품명을 입력해주세요.</div>
						</div>
					</div>

					<div class="mb-3">
						<label class="form-label" for="discrip">상품설명</label> <input
							type="text" class="form-control" name="discrip">
						<div class="invalid-feedback">상품설명을 입력해주세요.</div>
					</div>


					<div class="row">
						<div class="col-md-6 mb-3">
							<label class="form-label" for="amount">재고수량</label> <input
								type="text" class="form-control" name="amount">
							<div class="invalid-feedback">재고수량을 입력해주세요.</div>
						</div>

						<div class="col-md-6 mb-3">
							<label class="form-label" for="price">가격</label> <input
								type="text" class="form-control" name="price">
							<div class="invalid-feedback">상품가격을 입력해주세요.</div>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 mb-3">
							<label class="form-label" for="cate">카테고리</label>
							<!-- 							<input type="text" class="form-control" name="cate">  -->
							<select class="form-select" aria-label="Default select example"
								name="cate">
								<option selected>카테고리를 선택하세요.</option>
								<option value="메이크업-페이스">메이크업-페이스</option>
								<option value="메이크업-립">메이크업-립</option>
								<option value="메이크업-아이">메이크업-아이</option>
								<option value="스킨케어-클렌징">스킨케어-클렌징</option>
								<option value="스킨케어-스킨/로션">스킨케어-스킨/로션</option>
								<option value="스킨케어-마스크/팩">스킨케어-마스크/팩</option>
							</select>
						</div>
					</div>

					<div class="mb-3">
						<label class="form-label" for="imageurl">상품이미지</label> <input
							type="file" class="form-control" name="image" accept="image/*">
					</div>
					<div class="col-auto">
						<input class="btn btn-secondary  form-check" type="reset"
							value="초기화" /> <input class="btn btn-primary btn-lg float-end"
							type="submit" value="등록" />

					</div>
				</form>
				<br>
				<button class="btn btn-secondary "
					onclick="location.href='/main.jsp'">나가기</button>

				<jsp:include page="/footer.jsp" flush="true" />
			</div>


			

</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script src="/js/bootstrap.bundle.min.js"></script>
</html>