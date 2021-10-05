<%@page import="javax.websocket.SendResult"%>
<%@page import="pprojent_forum_1.dao.impl.Forum_1DaoImpl"%>
<%@page import="pprojent_forum_1.dto.Forum_1"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%	
	
		Forum_1DaoImpl forum_1 = new Forum_1DaoImpl();
	
		String num = request.getParameter("fNum");
	
	
		forum_1.deleteForum_1(new Forum_1(num));
		
		
	%>
	<script type="text/javascript">
		location.href= "/forum.jsp?forum=1&page=1" ;

	</script>

</body>
</html>