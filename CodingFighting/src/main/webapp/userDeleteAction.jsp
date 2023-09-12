<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ page import="user.*"%>
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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>delete Action</title>
</head>
<body>
   <%
   if (dto.getUserPW() == null) {
      PrintWriter script = response.getWriter();
      script.println("<script>");
      script.println("alert('비밀번호를 입력해주세요.')");
      script.println("history.back();");
      script.println("</script>");
   }else{
      UserDAO dao = new UserDAO();
      int result = dao.deleteUser(dto);
      
      if (result == 1) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("location.href = 'logout.jsp'");
         script.println("alert('탙퇴 성공.')");
         script.println("location.href = 'main.jsp'");
         script.println("</script>");

      } else if (result == 0) {
         PrintWriter script = response.getWriter();
         script.println("<script>");
         script.println("alert('비밀번호 오류!')");
         script.println("history.back();");
         script.println("</script>");
      }
   }
   %>
</body>
</html>