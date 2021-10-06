<%@page import="pproject_forum_1.dao.impl.Forum_1DaoImpl"%>
<%@page import="pproject_forum_1.dto.Forum_1"%>
<%@page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/forum_view.css">
	<div class="forumBord">
			
				<%	
					Forum_1DaoImpl forum = new Forum_1DaoImpl();
					String pageNum = request.getParameter("pageNum");
					
					String uNum = "0";
					int userNum = Integer.parseInt(uNum);
					if(session.getAttribute("num") !=null){
						uNum = (String)session.getAttribute("num");
						userNum = Integer.parseInt(uNum);
					}
					String fNum = forum.selectForum_1ByNum(pageNum).get(0).getNum();
					int forumNum = Integer.parseInt(fNum);
					String mNum = forum.selectForum_1ByNum(pageNum).get(0).getMember_num();
					int memberNum = Integer.parseInt(mNum);
					
				%>
				
				<h1>게시판</h1>
					<table border="1">
				
						<tr>
						
							<td id="title" colspan="4">
								<h2><%= forum.selectForum_1ByNum(pageNum).get(0).getTitle() %></h2>
							</td>
	
						</tr>
						<tr>
							<td colspan="4"> 
							 	<%= forum.selectForum_1ByNum(pageNum).get(0).getName() %> | <%= forum.selectForum_1ByNum(pageNum).get(0).getReg_date() %>
							</td>
						
						</tr>
						
						<tr id="writing">
							<td colspan="4">
								<%= forum.selectForum_1ByNum(pageNum).get(0).getContent().replace("\r\n", "<br>") %>
							</td>
						</tr>
						<tr>
							
								
							
							<%
							if(session.getAttribute("name") != null){
								
								if(userNum == memberNum || userNum == 1){
									%>
									<td>
										<form action="../process/forum_1/delete_process.jsp" method="post">
											<input type="hidden" name="fNum" value="<%=fNum%>">
											<input type="submit" value="삭제하기">
										</form>
									</td>
									
									<td>
										<form action="../forum_update.jsp" method="post">
											<input type="hidden" name="forum" value="1">
											<input type="hidden" name="fNum" value="<%=fNum%>">
											<input type="submit" value="수정하기">
										</form>
									</td>
									<%
								}
								
									
							}
							%>
					 		<td>
							<a href="forum.jsp?forum=1&page=1"><button>전체보기</button></a>
							</td>
						</tr>
						
					
					</table>
	</div>		
	
	
	
	