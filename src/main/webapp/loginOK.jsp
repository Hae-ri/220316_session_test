<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공</title>
</head>
<body>
	<%
		String member_id = request.getParameter("id");
		String member_pw = request.getParameter("pw");
		
		if(member_id.equals("abc") && member_pw.equals("12345"))
		{
			session.setAttribute("m_id", member_id);
			session.setAttribute("m_pw", member_pw);
			response.sendRedirect("welcome.jsp");
		}
		else
		{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>