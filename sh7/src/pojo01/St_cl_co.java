package pojo01;

public class St_cl_co {
	private Integer id;
	private Integer courseID;
	private String courseName;
	private Integer term;
	private Integer classID;
	private String className;
	private Integer studentNumber;
	private Integer count;
	
	public St_cl_co() {
	}
	
	@Override
	public String toString() {
		return "St_cl_co [id=" + id + ", courseID=" + courseID + ", courseName=" + courseName + ", term=" + term
				+ ", classID=" + classID + ", className=" + className + ", studentNumber=" + studentNumber + ", count="
				+ count + "]";
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCourseID() {
		return courseID;
	}
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public Integer getTerm() {
		return term;
	}
	public void setTerm(Integer term) {
		this.term = term;
	}
	public Integer getClassID() {
		return classID;
	}
	public void setClassID(Integer classID) {
		this.classID = classID;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public Integer getStudentNumber() {
		return studentNumber;
	}
	public void setStudentNumber(Integer studentNumber) {
		this.studentNumber = studentNumber;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	
}
