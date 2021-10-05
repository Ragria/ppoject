<%@page import="javax.websocket.Session"%>
<%@page import="pproject_member.dao.impl.MemberDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script type="text/javascript">

	<%
	MemberDaoImpl member = new MemberDaoImpl();
	boolean chk = true;
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	if(member.selectMemberById(id).isEmpty()){
		chk = false;
		
	}else if(member.selectMemberById(id).get(0).getPw().isEmpty()){
		chk = false;
		
	}else if(!member.selectMemberById(id).get(0).getPw().equals(pw)){
		chk = false;
		
	}
	if
	(chk == false){
		%>
		alert("아이디 혹은 비밀번호가 틀립니다.");
		location.href= "/login.jsp"
		<%
		
	}
	if(chk == true){
		session.setAttribute("name", member.selectMemberById(id).get(0).getName());
		session.setAttribute("num", member.selectMemberById(id).get(0).getNum());
		
		
		%>
			alert("<%=session.getAttribute("name")%>님 환영합니다.")
			location.href= "/index.jsp" ;
		<%
		
		
	}
	
	%>

</script>

</body>
</html>