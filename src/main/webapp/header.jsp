<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>

<link rel="stylesheet" href="css/header.css">
<div class="continer">

	<div class="logo">
	 <p>로고위치</p>	
	
	</div>
	
	<div class="center">
		
		
		<div id="top">
			이름
		</div>
		
		
		<div id="menubar">
			<ul>
				<li>공지사항</li>
				<li><a href="forum.jsp?forum=1&page=1">게시판1</a></li>
				<li>게시판2</li>
				<li>갤러리1</li>
				<li>갤러리2</li>
			</ul>
		</div>
		
		
	</div>
	
	<div class="login_join_box">
	
		<div id="login">
		
			<%
			
			if(session.getAttribute("num") == null) {
				%>
				
				<button onclick="location.href = './login.jsp'">로그인</button>
				
				<%
			}else{
				%>
				
				<button>내정보</button>
				
				<%
			}
			
			%>
			
		</div>
		
		<div id="join">
			
			<%
			
			if(session.getAttribute("num") == null) {
				%>
				
				<button onclick="location.href = '/join.jsp'">회원가입</button>
				
				<%
			}else{
				%>
				
				<button id="logout"  onclick="location.href = '/process/member/logout_process.jsp'">로그아웃</button>
				
				<%
			}
			
			%>
			
		</div>
	
	</div>

</div>

<script src="/js/jquery-3.6.0.min.js"></script>

<script type="text/javascript">
$(function () {
	$("#logout").on("click", function () {
		alert("안녕히 가세요.")
	})
})
</script>