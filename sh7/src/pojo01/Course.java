package pojo01;

public class Course {
	private Integer courseID;
	private Integer teacherID;
	private String courseName;
	private Integer term;
	public Integer getCourseID() {
		return courseID;
	}
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public Integer getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(Integer teacherID) {
		this.teacherID = teacherID;
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
	@Override
	public String toString() {
		return "Course [courseID=" + courseID + ", teacherID=" + teacherID + ", courseName=" + courseName + ", term="
				+ term + "]";
	}
	public Course() {
	}
	
}
