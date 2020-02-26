package pojo01;

import java.util.Date;

public class Student_kcsj {
	private Integer classID;
	private Integer studentID;
	private Integer courseID;
	private String kname;
	private Integer kscjID;
	private Date gettime;
	private String score;
	public Integer getClassID() {
		return classID;
	}
	public void setClassID(Integer classID) {
		this.classID = classID;
	}
	public Integer getCourseID() {
		return courseID;
	}
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}

	public Date getGettime() {
		return gettime;
	}
	public void setGettime(Date gettime) {
		this.gettime = gettime;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}

	public Student_kcsj() {
	}
	public Integer getKscjID() {
		return kscjID;
	}
	public void setKscjID(Integer kscjID) {
		this.kscjID = kscjID;
	}
	
	public Integer getStudentID() {
		return studentID;
	}
	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}
	@Override
	public String toString() {
		return "Student_kcsj [classID=" + classID + ", studentID=" + studentID + ", courseID=" + courseID + ", kname="
				+ kname + ", kscjID=" + kscjID + ", gettime=" + gettime + ", score=" + score + "]";
	}
	
}
