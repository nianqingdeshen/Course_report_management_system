package pojo01;

import java.util.HashSet;
import java.util.Set;

public class Class {
	private Integer classID;
	private String className;
	private Integer studentNumber;
	private College college;
	private Set<Student> student = new HashSet<Student>();
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
	
	@Override
	public String toString() {
		return "Class [classID=" + classID + ", className=" + className + ", studentNumber=" + studentNumber
				+ ", college=" + college + "]";
	}
	public Class() {
	}
	public College getCollege() {
		return college;
	}
	public void setCollege(College college) {
		this.college = college;
	}
	public Set<Student> getStudent() {
		return student;
	}
	public void setStudent(Set<Student> student) {
		this.student = student;
	}
	
}
