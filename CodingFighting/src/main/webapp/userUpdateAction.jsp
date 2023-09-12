<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="user.*"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<!-- 한명의 회원 정보를 담는 userDTO 클래스를 자바 빈즈로써 활용 현재페이지에서만 사용한다고 page 넣어줌-->
<jsp:useBean id="dto" class="user.UserDTO" scope="page" />
<jsp:setProperty name="dto" property="*" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	if (dto.getUserPW() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 입력해주세요.')");
		script.println("history.back();");
		script.println("</script>");
	} else {
		log("수정할 데이터: " + dto);
		UserDAO dao = new UserDAO();
		int result = dao.userUpdate(dto);
		log("수정 처리 결과: " + result);

		if (result == 1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원정보 수정 성공!')");
			script.println("location.href = 'myPage.jsp'");
			script.println("</script>");
		} else if (result == 0) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('비밀번호 오류!')");
			script.println("history.back();");
			script.println("</script>");
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('존재하지 않는 아이디입니다.')");
			script.println("history.back();");
			script.println("</script>");
		}
	}
	%>
</body>
</html>