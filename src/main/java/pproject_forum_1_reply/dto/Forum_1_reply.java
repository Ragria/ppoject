package pproject_forum_1_reply.dto;

public class Forum_1_reply {
	
	private String num;
	private String content;
	private String name;
	private String reg_date;
	private String member_num;
	private String forum_1_num;
	public Forum_1_reply() {
		// TODO Auto-generated constructor stub
	}
	
	public Forum_1_reply(String num) {
		super();
		this.num = num;
	}

	public Forum_1_reply(String num, String content) {
		super();
		this.num = num;
		this.content = content;
	}

	public Forum_1_reply( String content, String name, String member_num, String forum_1_num) {
		super();
		this.content = content;
		this.name = name;
		this.member_num = member_num;
		this.forum_1_num = forum_1_num;
	}
	public Forum_1_reply(String num, String content, String name, String reg_date, String member_num,
			String forum_1_num) {
		super();
		this.num = num;
		this.content = content;
		this.name = name;
		this.reg_date = reg_date;
		this.member_num = member_num;
		this.forum_1_num = forum_1_num;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	public String getMember_num() {
		return member_num;
	}
	public void setMember_num(String member_num) {
		this.member_num = member_num;
	}
	public String getForum_1_num() {
		return forum_1_num;
	}
	public void setForum_1_num(String forum_1_num) {
		this.forum_1_num = forum_1_num;
	}
	@Override
	public String toString() {
		return "Forum_1_reply [num=" + num + ", content=" + content + ", name=" + name + ", reg_date=" + reg_date
				+ ", member_num=" + member_num + ", forum_1_num=" + forum_1_num + "]";
	}

}
