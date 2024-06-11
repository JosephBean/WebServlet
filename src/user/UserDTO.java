package user;

import java.util.Date;

public class UserDTO {
	
	private int no;
	private String name;
	private String email;
	private String pwd;
	private String gender;
	private boolean del;
	private Date regDate;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public boolean isDel() {
		return del;
	}
	public void setDel(boolean del) {
		this.del = del;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "UserDTO [no=" + no + ", name=" + name + ", email=" + email + ", pwd=" + pwd + ", gender=" + gender
				+ ", del=" + del + ", regDate=" + regDate + "]";
	}
	
}
