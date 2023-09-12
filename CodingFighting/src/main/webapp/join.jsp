<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>회원가입</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <style>
    body {
      min-height: 100vh;

      background: -webkit-gradient(linear, left bottom, right top, from(#000000), to(#000000));
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
        <h4 class="mb-3">회원가입</h4>
        <form method="post" action="/joinAction.jsp">
          <div class="row">
            <div class="col-md-6 mb-3">
              <label for="name">이름</label>
              <input type="text" class="form-control" name = "userName">
              <div class="invalid-feedback">
                이름을 입력해주세요.
              </div>
            </div>
          </div>
          
           <div class="row">
           <div class="col-md-6 mb-3">
              <label for="ID">아이디</label>
              <input type="text" class="form-control" name = "userID">
              <div class="invalid-feedback">
                아이디를 입력해주세요.
              </div>
            </div>
           
            <div class="col-md-6 mb-3">
              <label for="password">비밀번호</label>
              <input type="password" class="form-control" name = "userPW">
              <div class="invalid-feedback">
                비밀번호를 입력해주세요.
              </div>
            </div>
          </div>
          
          <div class="mb-3">
            <label for="address">주소</label>
            <input type="text" class="form-control" name = "userAddress">
            <div class="invalid-feedback">
              주소를 입력해주세요.
            </div>
          </div>

          <div class="mb-3">
            <label for="address">연락처</label>
            <input type="text" class="form-control" name = "phonNum">
            <div class="invalid-feedback">
              연락처를 입력해주세요.
            </div>
          </div>
          
          <div class="mb-4"></div>
          <button class="btn btn-dark btn-lg btn-block" type="submit">가입 완료</button>
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
