<%@page import="pproject_forum_1_reply.dto.Forum_1_reply"%>
<%@page import="pproject_forum_1_reply.dao.impl.Forum_1_replyDaoImpl"%>
<%@page import="pproject_forum_1.dto.Forum_1"%>
<%@page import="pproject_forum_1.dao.impl.Forum_1DaoImpl"%>
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

<% 
	MemberDaoImpl member = new MemberDaoImpl();
	Forum_1DaoImpl forum_1 = new Forum_1DaoImpl();
	Forum_1_replyDaoImpl f1_re = new Forum_1_replyDaoImpl();
	String Search1 = "t";
	String Search = "%" + Search1 + "%";
%>
<%-- <%= member.selectMemberByAll()%><br> --%>
<%-- <%=member.selectMemberById(Search) %> --%>
<% 
	//member.insertMember(new Member("test", "1234", "우가우가", "m", "123@123"));
	//member.updateMember(new Member("3","수정후","수정","수정후@수정"));
	
	
	//member.deleteMember(new Member("3"));
%>


<%-- <%= forum_1.selectForum_1ByName("%대%").size()%>
 --%>
 
 <% 	
/*  for(int i = 0; i < 100; i++){
	 forum_1.insertForum_1(new Forum_1("제목테스트"+i , "내용테스트"+i, "대장", "1")); 
 }  */
 %>
 
 <% //forum_1.updateForum_1(new Forum_1("5", "수정제목", "수정내용")); %>
 <% //forum_1.deleteForum_1(new Forum_1("3")); %>
 
 <%= f1_re.selectForum_1_replyByAll() %>
 <%// f1_re.insertForum_1_reply(new Forum_1_reply("아아아", "대장","1","1")); %>



</body>
</html>