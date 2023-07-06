package jobkorea.dto;

public class JobDto {
	private String no; // 번호
	private String work; // 직업명
	private String company; // 회사명
	private String title; // 공고명
	private String career; // 경력
	private String academic_ability;// 학력
	private String prefer_basic;// 우대사항
	private String prefer_language; // 선호 언어
	private String employment_type;// 고용 유형 정규직 계약직
	private String salary;// 연봉
	private String location;// 지역
	private String time;// 시간~
	private String position;// 팀원 팀장 머 이런거

	public JobDto() {}
	public JobDto(String no, String work, String company, String title, String career, String academic_ability,
			String prefer_basic, String prefer_language, String employment_type, String salary, String location,
			String time, String position) {
		super();
		this.no = no;
		this.work = work;
		this.company = company;
		this.title = title;
		this.career = career;
		this.academic_ability = academic_ability;
		this.prefer_basic = prefer_basic;
		this.prefer_language = prefer_language;
		this.employment_type = employment_type;
		this.salary = salary;
		this.location = location;
		this.time = time;
		this.position = position;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getWork() {
		return work;
	}

	public void setWork(String work) {
		this.work = work;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getCareer() {
		return career;
	}

	public void setCareer(String career) {
		this.career = career;
	}

	public String getAcademic_ability() {
		return academic_ability;
	}

	public void setAcademic_ability(String academic_ability) {
		this.academic_ability = academic_ability;
	}

	public String getPrefer_basic() {
		return prefer_basic;
	}

	public void setPrefer_basic(String prefer_basic) {
		this.prefer_basic = prefer_basic;
	}

	public String getPrefer_language() {
		return prefer_language;
	}

	public void setPrefer_language(String prefer_language) {
		this.prefer_language = prefer_language;
	}

	public String getEmployment_type() {
		return employment_type;
	}

	public void setEmployment_type(String employment_type) {
		this.employment_type = employment_type;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}
}