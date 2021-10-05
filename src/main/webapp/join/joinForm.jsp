<%@page import="pproject_member.dao.impl.MemberDaoImpl"%>
<%@page import="pproject_member.dto.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%MemberDaoImpl member = new MemberDaoImpl(); %>
    

<h1>회원가입</h1>
<form action="/process/member/join_process.jsp" method="post" onsubmit="return checker">

	<table>
	
		<tr>
		
			<td>아이디</td>
			<td><input type="text" name="id" size="20"></td>
			
		</tr>
		
		<tr>
		
			<td>비밀번호</td>
			<td><input type="password" name="pw" size="20"></td>
			
		</tr>
		
		<tr>
		
			<td>비밀번호 확인 </td>
			<td><input type="password" name="vpw" size="20"></td>
			
		</tr>
		
		<tr>
		
			<td>닉네임 </td>
			<td><input type="text" name="name" size="20"></td>
			
		</tr>
		
		<tr>
		
			<td>이메일 </td>
			<td><input type="text" name="email" size="20"></td>
			
		</tr>
		
		<tr>
		
			<td>성별 </td>
			<td>남자 : <input type="radio" name="gender" value="m"> 여자 : <input type="radio" name="gender" value="f"></td>
			
		</tr>	
	
	</table>
	<input type="submit" value="회원가입" id="btn">
</form>

	

