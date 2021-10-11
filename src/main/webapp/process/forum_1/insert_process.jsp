<%@page import="javax.websocket.SendResult"%>
<%@page import="pproject_forum_1.dao.impl.Forum_1DaoImpl"%>
<%@page import="pproject_forum_1.dto.Forum_1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<script type="text/javascript">
		
	<%	
	
	Forum_1DaoImpl forum_1 = new Forum_1DaoImpl();

	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String name = request.getParameter("name");
	String member_num = request.getParameter("member_num");
	
	if(title == ""){
		%>
		alert("제목을 적어주세요.");
		history.go(-1);
		<%
	}else{
		forum_1.insertForum_1(new Forum_1(title, content, name, member_num));
		%>
		location.href= "/forum.jsp?forum=1&page=1";
		<%
	}

	
	%>
	
		
		
	
	</script>

</body>
</html>