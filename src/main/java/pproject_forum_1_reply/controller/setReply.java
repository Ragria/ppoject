package pproject_forum_1_reply.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import pproject_forum_1_reply.dao.impl.Forum_1_replyDaoImpl;
import pproject_forum_1_reply.dto.Forum_1_reply;

@WebServlet("/setReply")
public class setReply extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public setReply() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Forum_1_reply reply = new Forum_1_reply(
				request.getParameter("content"),
				request.getParameter("name"),
				request.getParameter("member_num"),
				request.getParameter("forum_1_num"));
		
		
		
		Forum_1_replyDaoImpl f1_reply = new Forum_1_replyDaoImpl();
		
		f1_reply.insertForum_1_reply(reply);
		
		
	}

}
