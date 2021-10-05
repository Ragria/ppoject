<%@page import="pproject_member.dao.impl.MemberDaoImpl"%>
<%@page import="pprojent_forum_1.dao.impl.Forum_1DaoImpl"%>
<%@page import="pprojent_forum_1.dto.Forum_1"%>
<%@page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/forum_view.css">
<link rel="stylesheet" href="/css/forum_insert.css">
	<div class="forumBord">
			
				<%	
					Forum_1DaoImpl forum = new Forum_1DaoImpl();
					MemberDaoImpl member = new MemberDaoImpl();
					
					
					String num = (String)session.getAttribute("num");
					
				%>
				
				<h1>게시판</h1>
				<form action="/process/forum_1/insert_process.jsp" method="post" onsubmit="return enter()">
					<input type="hidden" name="member_num" value="<%= num %>">
					<table border="1">
				
						<tr>
						
							<td id="title" colspan="4">
								<h2><input type="text" name="title" id="title"> </h2>
							</td>
	
						</tr>
						<tr>
							<td colspan="4"> 
							 	<input type="hidden" name="name" value="<%= member.selectMemberByNum(num).get(0).getName()%>" ><%= member.selectMemberByNum(num).get(0).getName()%> 
							</td>
						
						</tr>
						
						<tr id="writing">
							<td colspan="4">
								<textarea  name="content" id="content"></textarea>
							</td>
						</tr>
						<tr>
							<td>
							
							<input type="submit" value="작성하기" id="btn">
							
							</td>
							
						</tr>
					
					
					</table>
				</form>	
	</div>		


	
	
	