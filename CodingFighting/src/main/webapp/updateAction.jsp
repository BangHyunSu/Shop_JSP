<!doctype html>
<%
request.setCharacterEncoding("UTF-8");
%>
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
        if(session.getAttribute("userID") != null )
        {
            userID = (String) session.getAttribute("userID");
        }
        
        if(userID == null)
        {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('로그인을 하세요')");
            script.println("location.href = 'login.jsp'");
            script.println("</script>");
        } 
        int bbsID = 0;
        if (request.getParameter("bbsID") != null)
        {
            bbsID = Integer.parseInt(request.getParameter("bbsID"));
        }
        if (bbsID == 0)
        {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('유효하지 않은 글입니다')");
            script.println("location.href = 'service.jsp'");
            script.println("</script>");
        }
        ServiceDTO bbs = new ServiceDAO().getBbs(bbsID);
        if (!userID.equals(bbs.getUserID()))
        {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('권한이 없습니다')");
            script.println("location.href = 'service.jsp'");
            script.println("</script>");
            
        } else {
        if(request.getParameter("bbsTitle") == null || request.getParameter("bbsContent") == null
            || request.getParameter("bbsTitle").equals("") || request.getParameter("bbsContent").equals("")) {
            PrintWriter script = response.getWriter();
            script.println("<script>");
            script.println("alert('입력이 안된 사항이 있습니다.')");
            script.println("history.back()");
            script.println("</script>");
        } else {
            ServiceDAO bbsDAO = new ServiceDAO();
            int result = bbsDAO.update(bbsID, request.getParameter("bbsTitle"), request.getParameter("bbsContent"));
                if(result == -1){ // 글수정에 실패했을 경우
                    PrintWriter script = response.getWriter(); //하나의 스크립트 문장을 넣을 수 있도록.
                    script.println("<script>");
                    script.println("alert('글 수정에 실패했습니다.')");
                    script.println("history.back()");
                    script.println("</script>");
                }
                else { // 글수정에 성공했을 경우
                    PrintWriter script = response.getWriter();
                    script.println("<script>");
                    script.println("location.href= 'service.jsp'");
                    script.println("</script>");
                    }
            }
        }
    %>
</body>
</html>