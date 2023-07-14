package customer.vo;

import java.sql.Date;

public class UsersDto {
	private String bid;
	private String bpwd;
	private String bname;
	private String bemail;
	private String btel;
	private Date bregdate;
	//디폴트 생성자
	public UsersDto() {}
	public UsersDto(String bid, String bpwd, String bname, String bemail, String btel, Date bregdate) {
		super();
		this.bid = bid;
		this.bpwd = bpwd;
		this.bname = bname;
		this.bemail = bemail;
		this.btel = btel;
		this.bregdate = bregdate;
	}
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public String getBpwd() {
		return bpwd;
	}
	public void setBpwd(String bpwd) {
		this.bpwd = bpwd;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getBemail() {
		return bemail;
	}
	public void setBemail(String bemail) {
		this.bemail = bemail;
	}
	public String getBtel() {
		return btel;
	}
	public void setBtel(String btel) {
		this.btel = btel;
	}
	public Date getBregdate() {
		return bregdate;
	}
	public void setBregdate(Date bregdate) {
		this.bregdate = bregdate;
	}
	
}//UsersDto
