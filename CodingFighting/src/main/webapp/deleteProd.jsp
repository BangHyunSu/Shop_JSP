<%@page import="prod.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>판매상품 삭제</title>
</head>
<body>
<%
	String numS = request.getParameter("num");
	int num = Integer.parseInt(numS);
	ProdDAO proddao = ProdDAO.getInstance();
	proddao.deleteProduct(num);
	out.println("해당상품이 삭제되었습니다!");
	
%>
<script>
	alert("상품 삭제완료");
    location.href="/deleteProdForm.jsp";
</script>
</body>
</html>