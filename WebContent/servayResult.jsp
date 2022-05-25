<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="servay.VoteVo"%>
<%@ page import="servay.VoteDao"%>
<%@ page import="java.util.List"%>


<jsp:useBean id="Vdao" class="servay.VoteDao"/>
<jsp:useBean id="Vvo" class="servay.VoteVo"/>


<html>
<head>
<meta charset="UTF-8">
<title>result</title>
</head>
<body>
 
 <% List<VoteVo> arr = Vdao.list();%>
 <% for (VoteVo p: arr) {%>
 	<%=p %>표<br>
 <% }%>
 <a href="servayinclude.jsp">메인으로돌아가기</a>
</body>
</html>