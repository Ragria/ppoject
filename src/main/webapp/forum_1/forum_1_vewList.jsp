<%@page import="pprojent_forum_1.dao.impl.Forum_1DaoImpl"%>
<%@page import="pprojent_forum_1.dto.Forum_1"%>
<%@page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/forum_vewList.css">
<div class="forumBord">
			
				<%	
					Forum_1DaoImpl forum = new Forum_1DaoImpl();
					
		
					String getpage = request.getParameter("page");
					double forumSize = forum.selectForum_1ByAll().size();
					int nowPage = Integer.parseInt(getpage);
					int forumNum = 10;	//한페이지 게시글수
					int pageNum = 10;	//
					int pageStart = 1;
					int pageMax =  (int)(Math.ceil(forumSize / forumNum)); //페이지 마지막번호
					int startForum = (int)forumSize-(((nowPage-1) * forumNum + 1));
					int endForum = (int)forumSize - (nowPage * forumNum);
					
					
				%>
				<h1>게시판</h1>
				<table border="1">
				
					<tr>
						<td class="num">번호</td>
						<td class="title">제목</td>
						<td class="name">닉네임</td>
						<td class="time">작성시간</td>
					</tr>
					
					<% if(nowPage != pageMax){
							for(int i = startForum;i > endForum; i--){
								
								%>
								<tr>
									<td><%=forum.selectForum_1ByAll().get(i).getNum() %></td>
									<td><%=forum.selectForum_1ByAll().get(i).getTitle() %></td>
									<td><%=forum.selectForum_1ByAll().get(i).getName() %></td>
									<td><%=forum.selectForum_1ByAll().get(i).getReg_date()%></td>
								</tr>
								<%
							}
						
						}else{
							for(int i = startForum; i >= 0; i--){
								%>
								<tr>
									<td><%=forum.selectForum_1ByAll().get(i).getNum() %></td>
									<td><%=forum.selectForum_1ByAll().get(i).getTitle() %></td>
									<td><%=forum.selectForum_1ByAll().get(i).getName() %></td>
									<td><%=forum.selectForum_1ByAll().get(i).getReg_date()%></td>
								</tr>
								<%
							}
						}
					
						
						%>
						<tr>
							<td colspan="4">
							<%
							if(nowPage != 1){
								%>
								
								<a href="forum.jsp?forum=1&page=<%=pageStart%>">첫페이지</a>
							
								<%
							}
								if(nowPage != 1){
									%>
								
									<a href="forum.jsp?forum=1&page=<%=nowPage-1%>">이전페이지</a>
								
									<%
								}
								for(int i = nowPage, Prev = nowPage+2; i <  Prev; i++ ){
									if(i < pageStart+2){
										
									}else{
										%>
										
										<a href="forum.jsp?forum=1&page=<%=i-2%>"><%=i-2%></a>
									
										<%
									}
								
								}
								%>
								<%=nowPage%>
								<%
								for(int i = nowPage, next = nowPage+2; i <  next; i++ ){
									if(i > pageMax-1){
										
									}else{
										%>
										
										<a href="forum.jsp?forum=1&page=<%=i+1%>"><%=i+1%></a>
									
										<%
									}
								
								}
								if(nowPage != pageMax){
									%>
									
									<a href="forum.jsp?forum=1&page=<%=nowPage+1%>">다음페이지</a>
									
									<%
								}
								if(nowPage != pageMax){
									%>
									
									<a href="forum.jsp?forum=1&page=<%=pageMax%>">마지막페이지</a>
									
									<%
								}
								%>
								<%if(session.getAttribute("num")!=null){
								
									%><button>글쓰기</button><%
								}
								
								%>
								
								
							</td>
						</tr>
						
				
				</table>
			
			</div>