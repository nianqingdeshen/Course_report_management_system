package pojo01;
//学生表(studentID,classID,sname,sage,ssex,,password)
public class Student {
	private Integer studentID;
	private String sname;
	private String ssex;
	private Integer sage;
	private String password ;
	private Class class1;
	public Student() {
		super();
	}
	public Integer getStudentID() {
		return studentID;
	}
	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}
	
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSsex() {
		return ssex;
	}
	public void setSsex(String ssex) {
		this.ssex = ssex;
	}
	public Integer getSage() {
		return sage;
	}
	public void setSage(Integer sage) {
		this.sage = sage;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public Class getClass1() {
		return class1;
	}
	public void setClass1(Class class1) {
		this.class1 = class1;
	}
	@Override
	public String toString() {
		return "Student [studentID=" + studentID + ", sname=" + sname + ", ssex=" + ssex + ", sage=" + sage
				+ ", password=" + password + ", class1=" + class1 + "]";
	}
	
}