package customer.vo;

public class Member {
	private String id;
	private String pwd;
	private String name;
	private String gender;
	private String birth;
	private String is_lunar;
	private String cphone;
	private String email;
	private String habit;
	private String regdate;
	private String filesrc;
	
	public Member () {}

	public Member(String id, String pwd, String name, String gender, String birth, String is_lunar, String cphone,
			String email, String habit, String regdate, String filesrc) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.gender = gender;
		this.birth = birth;
		this.is_lunar = is_lunar;
		this.cphone = cphone;
		this.email = email;
		this.habit = habit;
		this.regdate = regdate;
		this.filesrc = filesrc;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getIs_lunar() {
		return is_lunar;
	}

	public void setIs_lunar(String is_lunar) {
		this.is_lunar = is_lunar;
	}

	public String getCphone() {
		return cphone;
	}

	public void setCphone(String cphone) {
		this.cphone = cphone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHabit() {
		return habit;
	}

	public void setHabit(String habit) {
		this.habit = habit;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getFilesrc() {
		return filesrc;
	}

	public void setFilesrc(String filesrc) {
		this.filesrc = filesrc;
	}
	
}