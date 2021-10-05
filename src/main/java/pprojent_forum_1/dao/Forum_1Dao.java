package pprojent_forum_1.dao;

import java.util.ArrayList;

import pprojent_forum_1.dto.Forum_1;

public interface Forum_1Dao {
	ArrayList<Forum_1> selectForum_1ByAll();
	
	ArrayList<Forum_1> selectForum_1ByName(String Search);
	ArrayList<Forum_1> selectForum_1ByContent(String Search);
	
	int insertForum_1(Forum_1 forum_1);
	
	int updateForum_1(Forum_1 forum_1);
	
	int deleteForum_1(Forum_1 forum_1);
	
	
}
