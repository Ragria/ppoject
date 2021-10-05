package pproject_member.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pproject_member.dao.MemberDao;
import pproject_member.dto.Member;
import pproject_member.util.jdbcUtil;

public class MemberDaoImpl implements MemberDao {
	private static final MemberDaoImpl instance = new MemberDaoImpl();

	public MemberDaoImpl() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public static MemberDaoImpl getInstance() {
		return instance;
	}

	@Override
	public ArrayList<Member> selectMemberByAll() {
		
		String sql = "select * from member";
		
		ArrayList<Member> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			
			list = new ArrayList<Member>();
			
			while(rs.next()){
				Member mem = getmember(rs);
				list.add(mem);				
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			return list;
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}finally {

			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return list;
	}


	@Override
	public ArrayList<Member> selectMemberByNum(String Search) {
		
		
		ArrayList<Member> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member where num like ?";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Search);
			
			rs = pstmt.executeQuery();
			
			
			list = new ArrayList<Member>();
			
			while(rs.next()){
				Member mem = getmember(rs);
				list.add(mem);
				return list;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}finally {

			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return list;
	}
	
	@Override
	public ArrayList<Member> selectMemberById(String Search) {
		
		
		ArrayList<Member> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member where id like ?";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Search);
			
			rs = pstmt.executeQuery();
			
			
			list = new ArrayList<Member>();
			
			while(rs.next()){
				Member mem = getmember(rs);
				list.add(mem);
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}finally {

			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return list;
	}
	
	@Override
	public ArrayList<Member> selectMemberByName(String Search) {
		
		
		ArrayList<Member> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from member where name like ?";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Search);
			
			rs = pstmt.executeQuery();
			
			
			list = new ArrayList<Member>();
			
			while(rs.next()){
				Member mem = getmember(rs);
				list.add(mem);
				return list;
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}finally {

			try {
				rs.close();
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
		return list;
	}

	@Override
	public int insertMember(Member member) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into member(id, pw, name, email, gender) values(?,?,?,?,?)";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getId());	
			pstmt.setString(2, member.getPw());	
			pstmt.setString(3, member.getName());	
			pstmt.setString(4, member.getEmail());	
			pstmt.setString(5, member.getGender());	
			
			pstmt.executeUpdate();

		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}finally {

			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return 0;
	}

	@Override
	public int updateMember(Member member) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "update member set pw = ?, name = ?, email = ? where num = ?";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getPw());	
			pstmt.setString(2, member.getName());	
			pstmt.setString(3, member.getEmail());	
			pstmt.setString(4, member.getNum());	
			
			pstmt.executeUpdate();

		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}finally {

			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return 0;
	}

	@Override
	public int deleteMember(Member member) {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete from member where num = ?;";
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();

			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, member.getNum());
			
			pstmt.executeUpdate();
			

		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}finally {

			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return 0;
	}
	
	private Member getmember(ResultSet rs) throws SQLException {
		String num = rs.getString("num");
		String id = rs.getString("id");
		String pw = rs.getString("pw");
		String name = rs.getString("name");
		String email = rs.getString("email");
		String gender = rs.getString("gender");
		return new Member (num, id, pw, name, email, gender);
	}


}
