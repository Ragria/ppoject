<%@page import="pproject_forum_1_reply.dao.impl.Forum_1_replyDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/rply_view.css">
<%
Forum_1_replyDaoImpl reply1 = new Forum_1_replyDaoImpl();
String pageNum = request.getParameter("pageNum");
%>

<table>
<%for(int i = 0; i < reply1.selectForum_1_replyByForum_1_num(pageNum).size(); i++){
	%>
  <tr>
    <td id="name"><%= reply1.selectForum_1_replyByForum_1_num(pageNum).get(i).getName() %></td>
    <td id="content"><%= reply1.selectForum_1_replyByForum_1_num(pageNum).get(i).getContent() %></td>
    <td id="date"><%= reply1.selectForum_1_replyByForum_1_num(pageNum).get(i).getReg_date() %></td>
    <td></td>
  </tr>
  <%
  }
 %>
</table>
