<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/basic.css">

</head>
<body>
<div class="wrapper">
	<div class="wrap">
		
		<header>
			<jsp:include page="header.jsp"></jsp:include>
		</header>
		
		<div class="container">
			<div id="notice">
				
			</div>
			
			
			<div class="forum">
				
				<div id="forum1">
				 <jsp:include page="forum_1/forum_1_preview.jsp"></jsp:include>
				</div>
			
				<div id="forum2">
				 
				</div>
			
			</div>
			
			
			<div class="gallery">
			
				<div id="gallery1">
				
				</div>
				
				<div id="gallery2">
				
				</div>
			
			</div>
			
		</div>
		
		<footer>
			<jsp:include page="footer.jsp"></jsp:include>
		</footer>
		
	</div>
</div>


</body>
</html>