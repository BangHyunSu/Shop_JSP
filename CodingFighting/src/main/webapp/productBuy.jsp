<%@page import="prod.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet" />
<style>
/*   .count-wrap {position: relative;padding: 0 38px;border: 1px solid #ddd;overflow: hidden;width: 60px;}
	.count-wrap > button {border: 0;background: #ddd;color: #000;width: 38px;height: 38px;position: absolute;top: 0;font-size: 12px;}
	.count-wrap > button.minus {left: 0;}
	.count-wrap > button.plus {right: 0;}
	.count-wrap .inp {border: 0;height: 38px;text-align: center;display: block;width: 100%;} */
* {
	font-family: "Jua", sans-serif;
}

.product-img {
	width: 500px;
	height: 300px;
	background-image: url("\imgs");
	background-position: center;
	background-size: cover;
}

.product-desc {
	width: 500px;
	margin-top: 20px;
	margin-bottom: 20px;
}

.price {
	font-size: 20px;
	font-style: italic;
}

.item-order {
	width: 500px;
}

.btn-order {
	margin: auto;
	width: 100px;
	display: block;
}

.wrap {
	width: 500px;
	padding-top: 50px;
	margin: auto;
}
</style>

<script>
	function order() {
		alert("주문이 완료되었습니다!")
	}
</script>
<title>구매 페이지</title>
</head>

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
	<div class="wrap">
		<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
			<%
			int num = Integer.parseInt(request.getParameter("num"));
			ProdDAO pDa = ProdDAO.getInstance();
			ProdDTO pDt = pDa.selectProduct(num);
			%>
			<div class="product-img">
				<img alt="이미지영역" src=".\imgs\<%=pDt.getFileName()%>" height="350px">
			</div>
			<div class="product-desc">
				<h2>
					<span class="price"><%=pDt.getProdName()%></span>
				</h2>
				<p></p>
			</div>
			<div class="item-order">
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text">가격</span>
					</div>
					<p type="text" class="form-control" aria-label="Default"
						aria-describedby="inputGroup-sizing-default"><%=pDt.getPrice()%></p>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text">상품상세설명</span>
					</div>
					<p type="text" class="form-control" aria-label="Default"
						aria-describedby="inputGroup-sizing-default"><%=pDt.getDiscrip()%></p>
				</div>
				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<span class="input-group-text">제조사</span>
					</div>
					<p type="text" class="form-control" aria-label="Default"
						aria-describedby="inputGroup-sizing-default"><%=pDt.getMaker()%></p>
				</div>
				<!-- <div class="count-wrap _count">
    <button type="button" class="minus">-</button>
    <input type="text" class="inp" value="1" />
    <button type="button" class="plus">+</button>
</div> -->

				<div class="input-group mb-3">
					<div class="input-group-prepend">
						<label class="input-group-text" for="inputGroupSelect01">수량</label>
					</div>
					<select class="custom-select" id="inputGroupSelect01">
						<option selected>-- 수량을 선택하세요 --</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
					</select>
				</div>
				
					<button type="button" onclick="move();"
						class="btn btn-primary btn-order">주문하기</button>
				
			</div>
		</div>
	</div>
<script>
function move() {
	location.href = "/buypage.jsp?num=<%=pDt.getNum()%>"
}
</script>
</body>
</html>