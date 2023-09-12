<!doctype html>
<%@page import="service.ServiceDTO"%>
<%@page import="service.ServiceDAO"%>
<%@ page import="java.io.PrintWriter"%>
<html lang="en">
<head>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.108.0">
<title>QnA 글쓰기</title>

</head>
<body>
	<%
	String userID = null;
	// 로그인 된 사람은 회원가입페이지에 들어갈수 없다
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}

	if (userID == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('로그인을 하세요')");
		script.println("location.href = 'login.jsp'");
		script.println("</script>");
	}
	int bbsID = 0;
	if (request.getParameter("bbsID") != null) {
		bbsID = Integer.parseInt(request.getParameter("bbsID"));
	}
	if (bbsID == 0) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('유효하지 않은 글입니다')");
		script.println("location.href = 'service.jsp'");
		script.println("</script>");
	}
	ServiceDTO service = new ServiceDAO().getBbs(bbsID);
	if (!userID.equals(service.getUserID())) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('권한이 없습니다')");
		script.println("location.href = 'service.jsp'");
		script.println("</script>");

	} else {
		ServiceDAO serviceDAO = new ServiceDAO();
		int result = serviceDAO.delete(bbsID);
		// 데이터베이스 오류인 경우
		if(result == -1	) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글 수정하기에 실패했습니다.')");
			script.println("history.back()");
			script.println("</script>");
		// 글 삭제가 정상적으로 실행되면 알림창을 띄우고 게시판 메인으로 이동
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('글 삭제하기 성공!')");
			script.println("location.href = 'service.jsp'");
			script.println("</script>");
			
		}
	}
	%>
</body>
</html>