package pojo01;

import java.util.Date;

public class Kcsj {

	private Integer kscjID;
	private Integer studentID;
	private String kname;
	private String score;
	private Integer courseID;
	private Date getTime;
	public Integer getKscjID() {
		return kscjID;
	}
	@Override
	public String toString() {
		return "Kcsj [kscjID=" + kscjID + ", studentID=" + studentID + ", kname=" + kname + ", score=" + score
				+ ", courseID=" + courseID + ", getTime=" + getTime + "]";
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
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public Integer getCourseID() {
		return courseID;
	}
	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public Date getGetTime() {
		return getTime;
	}
	public void setGetTime(Date getTime) {
		this.getTime = getTime;
	}
	public Kcsj() {
		// TODO Auto-generated constructor stub
	}

}
