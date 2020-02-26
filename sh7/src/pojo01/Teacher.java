package pojo01;

public class Teacher {
	@Override
	public String toString() {
		return "Teacher [teacherID=" + teacherID + ", age=" + age + ", teacherName=" + teacherName + ", sex=" + sex
				+ ", password=" + password + ", college=" + college + "]";
	}

	private Integer teacherID;
	private Integer age;
	private String teacherName;
	private String sex;
	private String password;
	private College college;
	
	public Teacher() {
	}

	public Integer getTeacherID() {
		return teacherID;
	}

	public void setTeacherID(Integer teacherID) {
		this.teacherID = teacherID;
	}

	public College getCollege() {
		return college;
	}

	public void setCollege(College college) {
		this.college = college;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getTeacherName() {
		return teacherName;
	}

	public void setTeacherName(String teacherName) {
		this.teacherName = teacherName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
	
}
