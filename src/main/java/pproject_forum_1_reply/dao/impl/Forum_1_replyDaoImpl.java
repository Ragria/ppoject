package pproject_forum_1_reply.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import pproject_forum_1_reply.dao.Forum_1_replyDao;
import pproject_forum_1_reply.dto.Forum_1_reply;
import pproject_member.util.jdbcUtil;

public class Forum_1_replyDaoImpl implements Forum_1_replyDao {
	private static final Forum_1_replyDaoImpl instens = new Forum_1_replyDaoImpl();

	public Forum_1_replyDaoImpl() {
		// TODO Auto-generated constructor stub
	}

	public static Forum_1_replyDaoImpl getInstens() {
		return instens;
	}

	@Override
	public ArrayList<Forum_1_reply> selectForum_1_replyByAll() {
		String sql = "select * from forum_1_reply";
		
		ArrayList<Forum_1_reply> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			
			list = new ArrayList<Forum_1_reply>();
			
			
			
			
			while(rs.next()){
				Forum_1_reply Froum_reply = getForum_1_reply(rs);
				list.add(Froum_reply);				
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
	public ArrayList<Forum_1_reply> selectForum_1_replyByForum_1_num(String Search) {
		
		String sql = "select * from forum_1_reply where forum_1_num like ?";
		
		ArrayList<Forum_1_reply> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Search);
			
			rs = pstmt.executeQuery();
			
			
			list = new ArrayList<Forum_1_reply>();
			
			
			
			
			while(rs.next()){
				Forum_1_reply Froum_reply = getForum_1_reply(rs);
				list.add(Froum_reply);				
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
	public ArrayList<Forum_1_reply> selectForum_1_replyByNum(String Search) {
		
		String sql = "select * from forum_1_reply where num like ?";
		
		ArrayList<Forum_1_reply> list = null;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, Search);
			
			rs = pstmt.executeQuery();
			
			
			list = new ArrayList<Forum_1_reply>();
			
			
			
			
			while(rs.next()){
				Forum_1_reply Froum_reply = getForum_1_reply(rs);
				list.add(Froum_reply);				
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
	public int insertForum_1_reply(Forum_1_reply forum_1_reply) {
		
		String sql = "INSERT INTO forum_1_reply (content, name, member_num, forum_1_num) values (?, ?, ?, ?)";

		Connection con = null;
		PreparedStatement pstmt = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, forum_1_reply.getContent());
			pstmt.setString(2, forum_1_reply.getName());
			pstmt.setString(3, forum_1_reply.getMember_num());
			pstmt.setString(4, forum_1_reply.getForum_1_num());
			
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			
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
	public int updateForum_1_reply(Forum_1_reply forum_1_reply) {
		String sql = "update forum_1_reply set content = ? where num = ?";

		Connection con = null;
		PreparedStatement pstmt = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, forum_1_reply.getContent());
			pstmt.setString(2, forum_1_reply.getNum());
			
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			
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
	public int deleteForum_1_reply(Forum_1_reply forum_1_reply) {
		String sql = "delete from forum_1_reply  where num = ?";

		Connection con = null;
		PreparedStatement pstmt = null;
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = jdbcUtil.getConnection();
			
			pstmt = con.prepareStatement(sql);
	
			pstmt.setString(1, forum_1_reply.getNum());
			
			
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			
			e.printStackTrace();
		} catch (NullPointerException e) {
			
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
	
	private Forum_1_reply getForum_1_reply(ResultSet rs) throws SQLException {
		String num = rs.getString("num");
		String content = rs.getString("content");
		String name = rs.getString("name");
		String reg_date = rs.getString("reg_date");
		String member_num = rs.getString("member_num");
		String forum_1_num = rs.getString("forum_1_num");
		return new Forum_1_reply(num, content, name, reg_date, member_num, forum_1_num);
	}

}
