package dao;

import java.util.List;

import pojo01.College;
import pojo01.Kcsj_course;
import pojo01.Student;
import pojo01.Teacher;

public interface StudentDao {
	//查询所有学生信息
	public List<Student> getAllStudentList() ;
	//根据学号和密码查询学生信息
	public Student getStudentByNameAndPwd(String studentID,String password);
	//查询所有课程设计报告信息
	public List<Kcsj_course>getAllKcsjList();
	//查询所有老师信息
	public List<Teacher>getAllTeacherList() ;
	//查询所有学院信息
	public List<College> getAllCollegeList() ;
	
}
