package pproject_member.dao;

import java.util.ArrayList;

import pproject_member.dto.Member;

public interface MemberDao {
	
	ArrayList<Member> selectMemberByAll();
	
	ArrayList<Member> selectMemberByNum(String Search);
	ArrayList<Member> selectMemberById(String Search);
	ArrayList<Member> selectMemberByName(String Search);
	
	
	
	int insertMember(Member member);
	
	int updateMember(Member member);
	
	int deleteMember(Member member);
	
	

}
