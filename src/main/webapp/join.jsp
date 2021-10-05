<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/basic.css">
<link rel="stylesheet" href="css/join.css">

</head>
<body>
<div class="wrapper">
	<div class="wrap">
		
		<header>
			<jsp:include page="header.jsp"></jsp:include>
		</header>
		
		<div class="container">
		
			<div class="content">
				
				<div class="join">
				
					<div>
						<jsp:include page="/join/joinForm.jsp"></jsp:include>
					</div>
							
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