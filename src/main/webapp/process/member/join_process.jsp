<%@page import="pproject_member.dto.Member"%>
<%@page import="pproject_member.dao.impl.MemberDaoImpl"%>
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
	boolean chk = true;
	MemberDaoImpl member = new MemberDaoImpl();
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String vpw = request.getParameter("vpw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String gender = request.getParameter("gender");
	
	if(id == ""){
		%>
		alert("아이디가 비었습니다.");
		<%
		chk = false;
	}else if(!member.selectMemberById(id).isEmpty()){
		%>
		alert("아이디 중복");
		<%
		chk = false;
	}
	
	
	
	if(pw == ""){
		%>
		alert("비밀번호가 비었습니다.");
		<%
		chk = false;
	}else if(!pw.equals(vpw)){
		%>
		alert("비밀번호를 확인해주세요.");
		<%
		chk = false;
	}
	
	
	
	if(name == ""){
		%>
		alert("닉네임이 비었습니다.");
		<%
		chk = false;
	}else if(!member.selectMemberByName(name).isEmpty()){
		%>
		alert("닉네임이 중복입니다.");
		<%
		chk = false;
	}
	
	if(email == ""){
		%>
		alert("이메일이 비었습니다.");
		<%
		chk = false;
	}
	
	if(chk == false){
		%>
		history.back();
		<%
	}
	if(chk == true){
		
		%>
		<%=member.insertMember(new Member(id, pw, name, email, gender))%>
		<%
		%>
		alert("회원가입을 축하합니다.");
		<%
		response.sendRedirect("/index.jsp");
	}
	
	%>
	
	</script>
	
</body>
</html>