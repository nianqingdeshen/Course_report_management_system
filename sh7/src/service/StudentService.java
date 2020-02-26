package service;

import java.util.List;

import pojo01.Class;
import pojo01.College;
import pojo01.Course;
import pojo01.Kcsj_course;
import pojo01.St_cl_co;
import pojo01.Student;
import pojo01.Student_kcsj;
import pojo01.Teacher;

public interface StudentService {
	//查询所有学生信息
	public List<Student>getAllStudentList() ;
	//根据学号和密码查询学生信息（需要从表单获取）
	public Student getStudentByNameAndPwd(String studentID,String password);
	//查询所有课程设计报告信息
	public List<Kcsj_course>getAllKcsjList();
	//查询所有老师信息
	public List<Teacher>getAllTeacherList() ;
	//查询所有学院信息
	public List<College> getAllCollegeList() ;
	//查询所有课程信息
	public List<Course> getAllCourseList() ;
	//查询所有课程信息
	public List<Class> getAllClassList() ;
	//根据学号查询学生信息
	public List<Student> getStudentById(Integer studentID);
	//根据学号查询学生提交过的所有课程设计
	public List<Kcsj_course> getKcsjById(Integer studentID);
	//根据学号查询学生所有的课程
	public List<St_cl_co> getKcById(Integer classID);
	//根据工号和密码查询教师的信息（需要从表单获取）
	public Teacher getTeacherByNameAndPwd(String teacherID,String password);
	//根据教师工号查询教师教授的课程列表(通过老师工号查询课程表)
	public List<Course> getCourseByTeacherId(Integer teacherID);
	//根据课程ID在st_cl_co视图中查询班级名称
	public List<St_cl_co> getCalssNameByCourseID(Integer courseID);
	//根据班级ID查询这个班级的所有学生
	public List<Student> getStudentByClassID(Integer classID);
	//根据班级ID和课程ID查找课程设计报告的信息
	public List<Student_kcsj> getKcsjByClassIDCourseID(Integer classID,Integer courseID);
	//根据工号查询教师的所有信息
	public List<Teacher> getTeacherMsgByTeacherID(Integer teacherID);
	//添加学生
	public void addStudent(Integer studentID,String sname,String ssex,Integer sage,String password,Class clases);
	//根据classID获取所有班级信息
	public Class getClassById(Integer classID);
	//根据学号删除学生
	public void deleteBystudentID(Integer studentID);
	//修改学生信息
	public void adminUpdaetStudent(Integer studentID,String sname,String ssex,Integer sage,String password,Class clases);
	//根据学生ID查找学生信息（对象）
	public Student queryStudentById(Integer studentID);
	//查询学院信息
	public College getAllCollegeById(Integer collegeID);
	//查找老师信息（对象）
	public Teacher getTeacherByteacherID(Integer teacherID);
	
	//学生上传作业并更新班级提交人数
		public void insert_kcsj_count(Integer studentID,Integer courseID,Integer classID,String kname);}
