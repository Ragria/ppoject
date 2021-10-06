<%@page import="pproject_forum_1_reply.dao.impl.Forum_1_replyDaoImpl"%>
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


</head>
<body>
<% 
int forumNum = Integer.parseInt(request.getParameter("forum")); 
Forum_1_replyDaoImpl reply1 = new Forum_1_replyDaoImpl();
String pageNum = request.getParameter("pageNum");
%>

<div class="wrapper">
	<div class="wrap">
		
		<header>
			<jsp:include page="header.jsp"></jsp:include>
		</header>
		
		<div class="container">
			<%if(forumNum == 1){
				%>
				<jsp:include page="forum_1/forum_1_view.jsp"></jsp:include>
				
				<%
			}
			%>
			<div id="box"></div>
			<hr id="replyhorizon">
		
			<%
			if(forumNum == 1){
				if(session.getAttribute("name")!=null){
					
			
				%>
				<div>
				<jsp:include page="forum_1/reply/f1_rply.jsp"></jsp:include>
				</div>
				<%
				}
			}
			 %>
			 <%
			if(forumNum == 1){
				if(!reply1.selectForum_1_replyByForum_1_num(pageNum).isEmpty()){
					%>
					<div>
					<jsp:include page="forum_1/reply/f1_rply_view.jsp"></jsp:include>
					</div>
					<%
				}
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