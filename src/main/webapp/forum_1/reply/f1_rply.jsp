<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet" href="/css/reply.css">
<%String name = (String)session.getAttribute("name"); %>

	<table>
		<tr>
				<td id="name"><%=session.getAttribute("name") %></td>
				<td><input type="text" name="reply" id="reply"></td>
				<td><input type="button" value="댓글작성" id="replyBtn"><td>
		</tr>
		
		
	</table>

	<script src="/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript">
	
		$(function() {
			
			$("#replyBtn").click(function() {
			
				var content = $("#reply").val();
				var forum_1_num = <%=request.getParameter("pageNum")%>;
				var name = <%="'"+name+"'"%>;
				var member_num = <%=session.getAttribute("num")%>;
				
				$.ajax({
					url : "setReply",
					type : "post",
					data : {content:content, forum_1_num:forum_1_num, name:name, member_num:member_num},
					datatype:JSON,
					contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
					success : function (data) {
						location.reload();
					},
					error : function (request, status, error) {
						alert("에러");
						alert("code"+request.status);
						
					}
					
				})
				
			})
			
			
		})
	
	</script>