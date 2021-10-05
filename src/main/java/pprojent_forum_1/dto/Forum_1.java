package pprojent_forum_1.dto;

public class Forum_1 {
	

	private String num;
	private String title;
	private String content;
	private String name;
	private String reg_date;
	private String member_num;
	
	public String getNum() {
		return num;
	}
	
	
	
	public Forum_1(String num) {
		super();
		this.num = num;
	}



	public Forum_1(String num, String title, String content) {
		super();
		this.title = title;
		this.content = content;
		this.num = num;
	}



	public Forum_1(String title, String content, String name, String member_num) {
		super();
		this.title = title;
		this.content = content;
		this.name = name;
		this.member_num = member_num;
	}
	

	public Forum_1(String num, String title, String content, String name, String reg_date, String member_num) {
		super();
		this.num = num;
		this.title = title;
		this.content = content;
		this.name = name;
		this.reg_date = reg_date;
		this.member_num = member_num;
	}

	public Forum_1() {
		// TODO Auto-generated constructor stub
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
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
	
	@Override
	public String toString() {
		return "Forum_1 [num=" + num + ", title=" + title + ", content=" + content + ", name=" + name + ", reg_date="
				+ reg_date + ", member_num=" + member_num + "]";
	}

}
