<%@page import="pproject_forum_1.dao.impl.Forum_1DaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/basic.css">
<link rel="stylesheet" href="css/forum.css">
<link rel="stylesheet" href="/css/forum_view.css">


</head>
<body>
<% int forumNum = Integer.parseInt(request.getParameter("forum")); %>

<div class="wrapper">
	<div class="wrap">
		
		<header>
			<jsp:include page="header.jsp"></jsp:include>
		</header>
		
		<div class="container">
			<%if(forumNum == 1){
				%>
				<jsp:include page="/forum_1/forum_1_update.jsp"></jsp:include>
				<%
			}
			%>
			
			
			
		</div>
		
		<footer>
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
		
	</div>
</div>


</body>
</html>