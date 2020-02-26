package dao;

import java.util.List;

import pojo01.College;
import pojo01.Kcsj_course;
import pojo01.Student;
import pojo01.Teacher;

public class StudentDaoImpl implements StudentDao{

	private StudentDao dao= new StudentDaoImpl();
	
	//查询所有学生信息
	@Override
	public List<Student> getAllStudentList() {
		return dao.getAllStudentList();
	}
	
	//根据学号和密码查询学生信息
	@Override
	public Student getStudentByNameAndPwd(String studentID, String password) {
		return dao.getStudentByNameAndPwd(studentID, password);
	}
	
	//查询所有课程设计报告信息
	@Override
	public List<Kcsj_course> getAllKcsjList() {
		return dao.getAllKcsjList();
	}
	//查询所有老师信息
	@Override
	public List<Teacher> getAllTeacherList() {
		return dao.getAllTeacherList();
	}
	//查询所有学院信息
	@Override
	public List<College> getAllCollegeList() {
		return dao.getAllCollegeList();
	}

}
