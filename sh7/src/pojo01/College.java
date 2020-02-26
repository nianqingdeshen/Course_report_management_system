package pojo01;

import java.util.HashSet;
import java.util.Set;

public class College {

	private Integer collegeID;
	private String collegeName;
	private Set<Teacher> teacher = new HashSet<Teacher>();
	private Set<Class> class1 = new HashSet<Class>();
	
	public College() {
	}

	public Set<Teacher> getTeacher() {
		return teacher;
	}

	public void setTeacher(Set<Teacher> teacher) {
		this.teacher = teacher;
	}

	@Override
	public String toString() {
		return "college [collegeID=" + collegeID + ", collegeName=" + collegeName + "]";
	}
	public Integer getCollegeID() {
		return collegeID;
	}
	public void setCollegeID(Integer collegeID) {
		this.collegeID = collegeID;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public Set<Class> getClass1() {
		return class1;
	}

	public void setClass1(Set<Class> class1) {
		this.class1 = class1;
	}
	
}
