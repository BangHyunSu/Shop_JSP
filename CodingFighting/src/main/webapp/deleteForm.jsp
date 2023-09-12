<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.io.PrintWriter"%>
<%@page import="user.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ȸ��Ż��</title>

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
	<%
	request.setCharacterEncoding("UTF-8");

	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");

	}
	

	%>
	<%
	UserDAO DAO = new UserDAO();
	UserDTO DTO = DAO.getUser(userID);
	%>
	<div class="container">
		<div class="input-form-backgroud row">
			<div class="input-form col-md-12 mx-auto">
				<h4 class="mb-3">ȸ��Ż��</h4>
				<form method="post" action="/userDeleteAction.jsp">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label>���̵�</label> <input type="text" class="form-control"
								name="userID" value="<%=DTO.getUserID()%>" readonly="readonly">
							<div class="invalid-feedback">���̵� �Է����ּ���.</div>
						</div>

						<div class="col-md-6 mb-3">
							<label>��й�ȣ</label> <input type="password" class="form-control"
								name="userPW">
							<div class="invalid-feedback">��й�ȣ�� �Է����ּ���.</div>
						</div>
					</div>
					<div class="mb-3">
						<button class="btn btn-dark btn-lg btn-block" type="submit">
							ȸ��Ż��</button>
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

<!--    <form action="join_ok.jsp" method="post"> -->
<!--       ���̵�:<input type="text" name="userID"><br/> -->
<!--       ��й�ȣ:<input type="password" name="userPW"><br/> -->
<!--       �̸�:<input type="text" name="userName"><br/> -->
<!--       �ּ�:<input type="text" name="userAddress"><br/> -->
<!--       ��ȭ��ȣ:<input type="text" name="phonNum"><br/> -->

<!--       <input type="submit" value="����"> -->

<!--    </form> -->