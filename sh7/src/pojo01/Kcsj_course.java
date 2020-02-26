package pojo01;

import java.sql.Date;

public class Kcsj_course {
	private Integer id;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	private Integer studentID;
	private String kname;
	private String score;
	private String courseName;
	private Integer term;
	private Date getTime;
	public Integer getStudentID() {
		return studentID;
	}
	public Kcsj_course() {
		super();
	}
	
	@Override
	public String toString() {
		return "Kcsj_course [id=" + id + ", studentID=" + studentID + ", kname=" + kname + ", score=" + score
				+ ", courseName=" + courseName + ", term=" + term + ", getTime=" + getTime + "]";
	}
	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}
	public String getkname() {
		return kname;
	}
	public void setkname(String kname) {
		this.kname = kname;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getcourseName() {
		return courseName;
	}
	public void setcourseName(String courseName) {
		this.courseName = courseName;
	}
	public Integer getTerm() {
		return term;
	}
	public void setTerm(Integer term) {
		this.term = term;
	}
	public Date getGetTime() {
		return getTime;
	}
	public void setGetTime(Date getTime) {
		this.getTime = getTime;
	}
}
