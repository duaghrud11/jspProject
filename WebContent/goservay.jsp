<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>

<%@ page import="servay.MenuDao"%>
<%@ page import="servay.MenuVo"%>
<%@ page import="java.util.List"%>
<jsp:useBean id="Mdao" class="servay.MenuDao"/>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="voteoretc.jsp" method='post'>

<% List<MenuVo> arr = Mdao.show();%>

<% for (MenuVo pp : arr) {%>
	<input type="checkbox" name="choice" value=<%=pp %> /><%=pp %><br>
	
		
	
	<%}%>	
	<br>

<br>
<input type="checkbox" name="etc" > 기타<input type ="text" name="tour" />
<br><br><input type="submit" name="vote" value="투표하기 " />
<br></form>
</body>
</html>