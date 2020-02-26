package action;

import java.io.IOException;


import javax.servlet.ServletException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import pojo01.Student;
import pojo01.Teacher;
import service.StudentService;
import service.StudentServiceImpl;

public class UserAction extends ActionSupport implements ServletResponseAware,ServletRequestAware{

	private static final long serialVersionUID = 1L;
	private String studentID;
	private String password;
	private String teacherID;
	public String getTeacherID() {
		return teacherID;
	}
	public void setTeacherID(String teacherID) {
		this.teacherID = teacherID;
	}


	private HttpServletRequest request;
	private HttpServletResponse response;
	private StudentService ss = new StudentServiceImpl();
	
	//管理员与学生登录
	public String login() {
		//得到用户名和密码，从数据库查询
		//System.out.println(studentID+"--"+password);
		if("admin".equals(studentID)&&"123456".equals(password)) {
			//将管理员名保存session中
			ActionContext.getContext().getSession().put("loginName", "admin");
			//将登陆判断的结果保存在session中
			ActionContext.getContext().getSession().put("loginTag", "loginFinish");
			//获取student表数据，保存在session中，保存类型list
			ActionContext.getContext().getSession().put("studentList", ss.getAllStudentList());
			return SUCCESS;
		}else {
		//从数据库查询学生是否存在
			//获取查询的结果集保存在student中
			Student student =ss.getStudentByNameAndPwd(studentID, password);
			if(student==null) {
				//将错误提示信息保存在session中
				ActionContext.getContext().getSession().put("loginError", "用户名或密码错误");
				return LOGIN;
			}else {
				try {
					//刷新错误信息
					ActionContext.getContext().getSession().put("loginError", "");
					//获取结果集保存在session中 
					ActionContext.getContext().getSession().put("student",student);
					//跳转到student界面
					request.getRequestDispatcher("/student/index.jsp").forward(request, response);
				} catch (ServletException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				return SUCCESS;
				}
			}
	}
	//管理员与学生登录
		public String login1() {
			//得到用户名和密码，从数据库查询
			//System.out.println(studentID+"--"+password);
			if("admin".equals(studentID)&&"123456".equals(password)) {
				//将管理员名保存session中
				ActionContext.getContext().getSession().put("loginName", "admin");
				//将登陆判断的结果保存在session中
				ActionContext.getContext().getSession().put("loginTag", "loginFinish");
				//获取student表数据，保存在session中，保存类型list
				ActionContext.getContext().getSession().put("studentList", ss.getAllStudentList());
				return SUCCESS;
			}else {
			//从数据库查询学生是否存在
				//获取查询的结果集保存在student中
				Student student =ss.getStudentByNameAndPwd(studentID, password);
				if(student==null) {
					//将错误提示信息保存在session中
					ActionContext.getContext().getSession().put("loginError", "用户名或密码错误");
					return LOGIN;
				}else {
					
						//刷新错误信息
						ActionContext.getContext().getSession().put("loginError", "");
						//获取结果集保存在session中 
						ActionContext.getContext().getSession().put("student",student);
						//跳转到student界面
						return SUCCESS;
					}
				}
		}
	//教师登录
	public String teacherLogin() {
		//从数据库查询教师是否存在
		//获取查询的结果集保存在teacher中
		Teacher teacher =ss.getTeacherByNameAndPwd(teacherID, password);
		if(teacher==null) {
			//将错误提示信息保存在session中
			ActionContext.getContext().getSession().put("loginError", "用户名或密码错误");
			return LOGIN;
		}else {
			//刷新错误信息
			ActionContext.getContext().getSession().put("loginError","");
			//获取结果集保存在session中 
			ActionContext.getContext().getSession().put("teacher",teacher);
			
			/*
			 * try { //跳转到student界面
			 * request.getRequestDispatcher("/teacher/index.jsp").forward(request,
			 * response); } catch (ServletException e) { e.printStackTrace(); } catch
			 * (IOException e) { e.printStackTrace(); }
			 */
			return SUCCESS;
			}
	}
	
	
	//用户退出
	public String exit() {
		//销毁session
		ActionContext.getContext().getSession().clear();
		return SUCCESS;
	}
	public String getStudentID() {
		return studentID;
	}

	public void setStudentID(String studentID) {
		this.studentID = studentID;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response= response;
	}


	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
	}
	
}
