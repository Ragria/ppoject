package pproject_forum_1_reply.dao;

import java.util.ArrayList;

import pproject_forum_1_reply.dto.Forum_1_reply;

public interface Forum_1_replyDao {
	ArrayList<Forum_1_reply> selectForum_1_replyByAll();
	
	ArrayList<Forum_1_reply> selectForum_1_replyByForum_1_num(String Search);
	ArrayList<Forum_1_reply> selectForum_1_replyByNum(String Search);
	
	int insertForum_1_reply(Forum_1_reply forum_1_reply);
	
	int updateForum_1_reply(Forum_1_reply forum_1_reply);
	
	int deleteForum_1_reply(Forum_1_reply forum_1_reply);
}
