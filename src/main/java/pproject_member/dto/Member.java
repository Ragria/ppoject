package pproject_member.dto;

public class Member {
	
	private String num;
	private String id;
	private String pw;
	private String name;
	private String email;
	private String gender;
	
	
	@Override
	public String toString() {
		return "Member [num=" + num + ", id=" + id + ", pw=" + pw + ", name=" + name + ", email=" + email + ", gender="
				+ gender + "]";
	}
	
	


	public Member(String num) {
		super();
		this.num = num;
	}

	public Member(String num, String id, String pw, String name, String email, String gender) {
		super();
		this.num = num;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.email = email;
	}

	public Member(String id, String pw, String name, String email, String gender) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.email = email;
	}
	
	public Member(String num, String pw, String name, String email) {
		super();
		this.num = num;
		this.pw = pw;
		this.name = name;
		this.email = email;
	}

	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	

}
