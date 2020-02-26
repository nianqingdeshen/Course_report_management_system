package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


import pojo01.College;
import pojo01.Student;
import pojo01.Teacher;
import service.StudentService;
import service.StudentServiceImpl;
import service.TeacherService;
import service.TeacherServiceImpl;

public class TeacherAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private Integer teacherID;
	private Integer courseID;
	private TeacherService tt=new TeacherServiceImpl();

	private Integer age;
	private String teacherName;
	private String sex;
	private String password;
	private String password01;
	private Integer collegeID;
	public Integer getClassID() {
		return classID;
	}
	public void setClassID(Integer classID) {
		this.classID = classID;
	}
	private Integer classID;
	
	private StudentService ss=new StudentServiceImpl();

	public String getTeacherList() {
		ActionContext.getContext().getSession().put("teacherList", ss.getAllTeacherList());
		
		System.out.println(ss.getAllTeacherList());
		return SUCCESS;
	}
	//根据教师工号查询教师教授的课程列表(通过老师工号查询课程表)
		public String getKcMsg() {
			ActionContext.getContext().getSession().put("kcMsg", ss.getCourseByTeacherId(teacherID));
			
			
			System.out.println(ss.getCourseByTeacherId(teacherID));
			
			return SUCCESS;
		}
		//根据课程ID在st_cl_co视图中查询班级名称
		public String getClassMsg() {
			ActionContext.getContext().getSession().put("classMsg", ss.getCalssNameByCourseID(courseID));
			System.out.println(ss.getCalssNameByCourseID(courseID));
			System.out.println(courseID);
			return SUCCESS;
		}
		//根据班级ID查询这个班级的所有学生
		public String getStudentMsg() {
			ActionContext.getContext().getSession().put("studentMsg", ss.getStudentByClassID(classID));
			System.out.println(ss.getStudentByClassID(classID));
			System.out.println(classID);
			return SUCCESS;
		}
		//根据班级ID和课程ID查询关于这门课程这个班级的所有课程设计
		public String getKcsjMsg() {
			ActionContext.getContext().getSession().put("kcsjMsg", ss.getKcsjByClassIDCourseID(classID, courseID));
			System.out.println(ss.getKcsjByClassIDCourseID(classID, courseID));
			System.out.println(classID);
			System.out.println(courseID);
			return SUCCESS;
		}
		//根据工号查询教师的所有信息
		public String getTeacherMsg(){
			ActionContext.getContext().getSession().put("teacherMsg", ss.getTeacherMsgByTeacherID(teacherID));
			System.out.println(ss.getTeacherMsgByTeacherID(teacherID));
		
			System.out.println(teacherID);
			return SUCCESS;
		}
		//添加老师
		public String addTeacher() {
			System.out.println(teacherName+" "+collegeID);
			College college=ss.getAllCollegeById(collegeID);
			tt.addTeache(teacherID, teacherName, sex, age, password, college);
			return SUCCESS;
		}
		//获得College的对象
		public String addTeacherInput() {
			HttpServletRequest request=ServletActionContext.getRequest();
			List<College> cList=ss.getAllCollegeList();
			request.setAttribute("cList", cList);
			return SUCCESS;
		}
		//admin 修改老师信息
		public String adminteachertUpdate() {
			System.out.println("老师id="+teacherID);
			System.out.println("学院id="+collegeID);
			return SUCCESS;
		}
		public String adminteachertUpdate01() {
			College college=ss.getAllCollegeById(collegeID);
			tt.adminteachertUpdate(teacherID, teacherName, sex, age, password, college);
			return SUCCESS;
		}
		//老师修改个人信息
		public String teachertUpdate() {
			System.out.println(teacherID);
	    	HttpServletRequest request=ServletActionContext.getRequest();
	    	Student t=ss.queryStudentById(teacherID);
	    	Teacher teacher=ss.getTeacherByteacherID(teacherID);
	    	request.setAttribute("teacher", teacher);
	    	System.out.println("修改前老师个人信息"+" "+teacher);
			return SUCCESS;
		}
		public String teacherUpdate01() {
			College college=ss.getAllCollegeById(collegeID);
			tt.adminteachertUpdate(teacherID, teacherName, sex, age, password, college);
			return SUCCESS;
		}
		//老师修改个人密码
		public String teacherPassword() {
			System.out.println(teacherID);
	    	HttpServletRequest request=ServletActionContext.getRequest();
	    	Teacher teacher=ss.getTeacherByteacherID(teacherID);
	    	request.setAttribute("teacher", teacher);
	    	System.out.println("修改前老师个人信息"+" "+teacher);
			return SUCCESS;
		}
		public String teacherPassword01() {
	     	 if(password.equals(password01)) {
	     		 System.out.println(password+" "+password01);
	     		College college=ss.getAllCollegeById(collegeID);
	    		tt.adminteachertUpdate(teacherID, teacherName, sex, age, password, college);
	     		return SUCCESS;
	     	 }else {
	     		ActionContext.getContext().getSession().put("loginError", "两次密码输入不一致，请从新输入!");
	     		 return ERROR;
	     	 }
		}
		
		public Integer getTeacherID() {
			return teacherID;
		}
		public void setTeacherID(Integer teacherID) {
			this.teacherID = teacherID;
		}
		public Integer getCourseID() {
			return courseID;
		}
		public void setCourseID(Integer courseID) {
			this.courseID = courseID;
		}
		public Integer getAge() {
			return age;
		}
		public void setAge(Integer age) {
			this.age = age;
		}
		public String getTeacherName() {
			return teacherName;
		}
		public void setTeacherName(String teacherName) {
			this.teacherName = teacherName;
		}
		public String getSex() {
			return sex;
		}
		public void setSex(String sex) {
			this.sex = sex;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getPassword01() {
			return password01;
		}
		public void setPassword01(String password01) {
			this.password01 = password01;
		}
		public Integer getCollegeID() {
			return collegeID;
		}
		public void setCollegeID(Integer collegeID) {
			this.collegeID = collegeID;
		}

}
