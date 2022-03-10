<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 정보 확인</title>
</head>
<body>
	<%
		Cookie[] cooks = request.getCookies(); // 모든 쿠키를 가져와 쿠키 클래스 배열에 저장
		out.println("쿠키의 개수 :" + cooks.length +"<br>");
		
		for(int i=0; i<cooks.length; i++)
		{
			out.println((i+1) + ") 쿠키 이름:" + cooks[i].getName() + "<br>");
			out.println((i+1) + ") 쿠키 값:" + cooks[i].getValue() + "<br>");
			
		}
		
	%>
</body>
</html>