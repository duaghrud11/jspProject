<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="servay.MenuVo"%>
<%@ page import="servay.MenuDao"%>
<%@ page import="servay.VoteVo"%>
<%request.setCharacterEncoding("UTF-8");%>

<jsp:useBean id="Mvo" class="servay.MenuVo"/>
<jsp:useBean id="Mdao" class="servay.MenuDao"/>
<jsp:useBean id="Vdao2" class="servay.VoteDao2"/>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% String name = request.getParameter("choice"); %>
<% String tour = request.getParameter("tour"); %>
<%String on =request.getParameter("etc");%>
<% VoteVo Vvo= new VoteVo(name); %>
<% Vdao2.vote(Vvo); %>
<%if (on != null) { %>
<%if (on.equals(on)){ %>
<jsp:setProperty name="Mvo" property="tour"/>
<%Mdao.insert(Mvo); %>
<%} %>
<%} %>
 투표에 응해주셔서 감사드립니다 ^^ <br>
 <a href="servayinclude.jsp">메인으로</a>
</body>
</html>