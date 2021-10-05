package pprojent_forum_1.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pproject_member.util.jdbcUtil;
import pprojent_forum_1.dao.Forum_1Dao;
import pprojent_forum_1.dto.Forum_1;

public class Forum_1DaoImpl implements Forum_1Dao {
	private static final Forum_1DaoImpl instance = new Forum_1DaoImpl();

	public static Forum_1DaoImpl getInstance() {
		return instance;
	}

	public Forum_1DaoImpl() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public ArrayList<Forum_1> selectForum_1ByAll() {
		String sql = "select * from forum_1";
		
		ArrayList<Forum_1> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			
			list = new ArrayList<Forum_1>();
			
			
			
			
			while(rs.next()){
				Forum_1 Froum = getForum_1(rs);
				list.add(Froum);				
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
	public ArrayList<Forum_1> selectForum_1ByName(String Search) {
		
		ArrayList<Forum_1> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from forum_1 where name like ?";
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = jdbcUtil.getConnection();
				
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, Search);
				
				rs = pstmt.executeQuery();
				
				
				list = new ArrayList<Forum_1>();
				
				while(rs.next()){
					Forum_1 forum = getForum_1(rs);
					list.add(forum);
					
				}
		}catch (Exception e) {
			// TODO: handle exception
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
	public ArrayList<Forum_1> selectForum_1ByContent(String Search) {
		ArrayList<Forum_1> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select * from forum_1 where content like ?";
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = jdbcUtil.getConnection();
				
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, Search);
				
				rs = pstmt.executeQuery();
				
				
				list = new ArrayList<Forum_1>();
				
				while(rs.next()){
					Forum_1 forum = getForum_1(rs);
					list.add(forum);
					
				}
		}catch (Exception e) {
			// TODO: handle exception
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
	public int insertForum_1(Forum_1 forum_1) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "insert into forum_1 (title, content, name, member_num) values (?, ?, ?, ?)";
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = jdbcUtil.getConnection();
				
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, forum_1.getTitle());
				pstmt.setString(2, forum_1.getContent());
				pstmt.setString(3, forum_1.getName());
				pstmt.setString(4, forum_1.getMember_num());
				
				pstmt.executeUpdate();
				
		}catch (Exception e) {
			// TODO: handle exception
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
	public int updateForum_1(Forum_1 forum_1) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "update forum_1 set title = ?, content = ? where num = ?";
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = jdbcUtil.getConnection();
				
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, forum_1.getTitle());
				pstmt.setString(2, forum_1.getContent());
				pstmt.setString(3, forum_1.getNum());
				
				pstmt.executeUpdate();
				
		}catch (Exception e) {
			// TODO: handle exception
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
	public int deleteForum_1(Forum_1 forum_1) {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		String sql = "delete from forum_1 where num = ?";
		
		try {
				Class.forName("com.mysql.jdbc.Driver");
				
				con = jdbcUtil.getConnection();
				
				
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, forum_1.getNum());
				
				pstmt.executeUpdate();
				
		}catch (Exception e) {
			// TODO: handle exception
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

	
	private Forum_1 getForum_1(ResultSet rs) throws SQLException {
		String num = rs.getString("num");
		String title = rs.getString("title");
		String content = rs.getString("content");
		String name = rs.getString("name");
		String reg_date = rs.getString("reg_date");
		String member_num = rs.getString("member_num");
		return new Forum_1(num, title, content, name, reg_date, member_num);
	}
}
