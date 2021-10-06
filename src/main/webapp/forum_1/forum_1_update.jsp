<%@page import="pproject_forum_1.dao.impl.Forum_1DaoImpl"%>
<%@page import="pproject_forum_1.dto.Forum_1"%>
<%@page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/forum_view.css">
<link rel="stylesheet" href="/css/forum_insert.css">
	<div class="forumBord">
			
				<%	
					Forum_1DaoImpl forum = new Forum_1DaoImpl();
					
					String fNum = request.getParameter("fNum");
					
				%>
				
				<h1>게시판</h1>
				<form action="process/forum_1/update_process.jsp" method="post">
					<input type="hidden" name="fNum" value="<%= fNum %>">
					<table border="1">
				
						<tr>
						
							<td id="title" colspan="4">
								<h2><input type="text" name="totle" value="<%= forum.selectForum_1ByNum(fNum).get(0).getTitle() %>"> </h2>
							</td>
	
						</tr>
						<tr>
							<td colspan="4"> 
							 	<%= forum.selectForum_1ByNum(fNum).get(0).getName() %> | <%= forum.selectForum_1ByNum(fNum).get(0).getReg_date() %>
							</td>
						
						</tr>
						
						<tr id="writing">
							<td colspan="4">
								<textarea name="content" id="content" ><%= forum.selectForum_1ByNum(fNum).get(0).getContent() %></textarea>
							</td>
						</tr>
						<tr>
							<td>
							
							<input type="submit" value="수정하기">
							
							</td>
							
						</tr>
					
					
					</table>
				</form>	
	</div>		
	
	
	
	