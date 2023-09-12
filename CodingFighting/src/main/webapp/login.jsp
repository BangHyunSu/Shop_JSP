<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

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
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">로그인</h4>
				<form method="post" action="/loginAction.jsp">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label>아이디</label> <input type="text" class="form-control"
								name="userID">
							<div class="invalid-feedback">아이디를 입력해주세요.</div>
						</div>

						<div class="col-md-6 mb-3">
							<label>비밀번호</label> <input type="password" class="form-control"
								name="userPW">
							<div class="invalid-feedback">비밀번호를 입력해주세요.</div>
						</div>
					</div>
					<div class="mb-4">
						<button class="btn btn-dark btn-lg btn-block" type="submit">로그인</button>
					</div>
				</form>
				<form action="join.jsp">
					<div class="mb-3">
						<button class="btn btn-dark btn-lg btn-block" type="submit">
							회원가입</button>
					</div>
				</form>
			</div>
		</div>
		<footer class="my-3 text-center text-small">
			<p class="mb-1">&copy; 2023 HERA</p>
		</footer>
	</div>
	<script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
</body>
</html>

<!-- 	<form action="join_ok.jsp" method="post"> -->
<!-- 		아이디:<input type="text" name="userID"><br/> -->
<!-- 		비밀번호:<input type="password" name="userPW"><br/> -->
<!-- 		이름:<input type="text" name="userName"><br/> -->
<!-- 		주소:<input type="text" name="userAddress"><br/> -->
<!-- 		전화번호:<input type="text" name="phonNum"><br/> -->

<!-- 		<input type="submit" value="가입"> -->

<!-- 	</form> -->
