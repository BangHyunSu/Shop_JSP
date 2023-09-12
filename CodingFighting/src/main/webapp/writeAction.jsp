<!-- 실제로 글쓰기를 눌러서 만들어주는 Action페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="service.ServiceDAO"%>
<%@ page import="java.io.PrintWriter"%>
<!-- 자바스크립트 문장사용 -->
<%
request.setCharacterEncoding("UTF-8");
%>
<!-- 건너오는 모든 파일을 UTF-8로 -->
<jsp:useBean id="service" class="service.ServiceDTO" scope="page" />
<jsp:setProperty name="service" property="bbsTitle" />
<jsp:setProperty name="service" property="bbsContent" />

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>글쓰기 액션</title>
</head>
<body>
	<%
	String userID = null;
	// 로그인 된 사람은 회원가입페이지에 들어갈수 없다
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
		log(userID);
	}
	
		if (service.getBbsTitle() == null || service.getBbsContent() == null) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('입력이 안된 사항이 있습니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			ServiceDAO serviceDAO = new ServiceDAO();
			int result = serviceDAO.write(service.getBbsTitle(), userID, service.getBbsContent());
			if (result == -1) { // 글쓰기에 실패했을 경우
				
		PrintWriter script = response.getWriter(); //하나의 스크립트 문장을 넣을 수 있도록.
		script.println("<script>");
		script.println("alert('글쓰기에 실패했습니다.')");
		script.println("history.back()");
		script.println("</script>");
			} else { // 글쓰기에 성공했을 경우
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("location.href= 'service.jsp'");
		script.println("</script>");
			}
		}
	%>
</body>
</html>
