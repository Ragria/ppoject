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
	String rMemberNum = reply1.selectForum_1_replyByForum_1_num(pageNum).get(i).getMember_num();
	int intRMemberNum = Integer.parseInt(rMemberNum);
	%>
  <tr>
    <td id="name"><%= reply1.selectForum_1_replyByForum_1_num(pageNum).get(i).getName() %></td>
    <td id="content"><%= reply1.selectForum_1_replyByForum_1_num(pageNum).get(i).getContent() %></td>
    <td id="date"><%= reply1.selectForum_1_replyByForum_1_num(pageNum).get(i).getReg_date() %></td>
    <td>
    	<%
    	if(session.getAttribute("num")!=null){
    		String sNum = (String)session.getAttribute("num");
    		int intSnum = Integer.parseInt(sNum);
    		
    		if(intSnum == intRMemberNum || intSnum == 1){
    			%>
    			<input type="hidden" id="num<%=i %>" value="<%= reply1.selectForum_1_replyByForum_1_num(pageNum).get(i).getNum()%>">
    			<input type="button" id="deleteBtn<%=i %>" value="x">
    			<%
    		}
    	}
    	%>
    </td>
    
  </tr>
  <%
  }
 %>
</table>

	<script src="/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	<%
	for(int i = 0; i < reply1.selectForum_1_replyByForum_1_num(pageNum).size();i++){
		%>
		var deleteBtn = [];
		
		deleteBtn[<%=i%>] = "deleteBtn<%= i%>";
				
			$('#' + deleteBtn[<%=i%>]).click(function() {
			
				var num = $("#num<%=i%>").val();
				
				
				
				$.ajax({
					url : "deleteReply",
					type : "post",
					data : {num:num},
					success : function (data) {
						location.reload();
						
					},
					error : function (request, status, error) {
						alert("에러");
						alert("code"+request.status);
						
					}
					
				})
				
			})
			
			<%
	}
	%>	
	

	</script>
