package hotel.bean;

import java.sql.Timestamp;

public class MemberDTO {
	private String id;
	private String pw;
	private String name;
	private String email;
	private String birth;
	private String addr;
	private String pnum;
   private String cauto;
   private String heart;
   private int grade;	//0 : 일반 , 11:로그아웃상태 , 81 : 휴면  , 82 : 블랙리스트
   private Timestamp joindate;
   
public int getGrade() {
	return grade;
}
public void setGrade(int grade) {
	this.grade = grade;
}
public String getHeart() {
	return heart;
}
public void setHeart(String heart) {
	this.heart = heart;
}
public String getCauto() {
	return cauto;
}
public void setCauto(String cauto) {
	this.cauto = cauto;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getPnum() {
		return pnum;
	}
	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	public Timestamp getJoindate() {
		return joindate;
	}
	public void setJoindate(Timestamp joindate) {
		this.joindate = joindate;
	}
	
	
}
