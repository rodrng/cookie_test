<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 성공/쿠키 생성</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	
		String m_id = request.getParameter("id");
		String m_pw = request.getParameter("pw");
		
		if(m_id.equals("tiger") && m_pw.equals("12345"))
		{
			Cookie cooks_id = new Cookie("memberId", m_id); // 아이디값을 저장한 쿠키객체 생성
			Cookie cooks_pw = new Cookie("memberPw", m_pw); // 비밀번호를 저장한 쿠키객체 생성
			
			response.addCookie(cooks_id); // response 객체에 쿠키를 실어서 클라이언트의 웹브라우저에 보냄
			response.addCookie(cooks_pw); // 
			
			out.println(m_id + "님이 로그인 하셨습니다.");
			out.print("쿠키가 생성 되었습니다.<br>");
		}
		else
		{
			response.sendRedirect("login.jsp"); // 로그인 실패시 첫페이지로 다시 돌려보냄
		}
	%>
	
	<a href = "cookie_info.jsp">쿠키정보확인</a><br>
	<a href = "logoutOk.jsp">로그아웃</a>
</body>
</html>