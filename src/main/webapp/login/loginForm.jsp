<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<h1>로그인</h1>
<form action="/process/member/login_process.jsp" method="post">

	<table>
	
		<tr>
			<td>아이디  </td>
			<td><input type="text" name="id" size="20"></td>
			
		</tr>
		<tr>
			<td>비밀번호 </td>
			<td><input type="password" name="pw" size="20"></td>
		</tr>	
	
	</table>
	<input type="submit" value="로그인" class="btn">
		

</form>