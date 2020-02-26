package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.StudentService;
import service.StudentServiceImpl;
import pojo01.Class;
import pojo01.Student;

public class StudentAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private Integer studentID;
	private String password;
	private Integer classID;
	private String sname;
	private String ssex;
	private Integer sage;
	private String password01;
	
	
	private StudentService ss=new StudentServiceImpl();
	//获取学生列表 action:goHomePage
	public String goHomePage() {
		ActionContext.getContext().getSession().put("studentList", ss.getAllStudentList());
		System.out.println(ss.getAllStudentList());
		return SUCCESS;
	}
	//获取学生列表 action:getStudentList
	public String getStudentList() {
		ActionContext.getContext().getSession().put("studentList", ss.getAllStudentList());
		System.out.println(ss.getAllStudentList());
		return SUCCESS;
	}
	//根据学生学号获取学生个人信息
	public String getStudentMsg() {
		ActionContext.getContext().getSession().put("studentMsg", ss.getStudentById(studentID));
		System.out.println(ss.getStudentById(studentID));
		//System.out.println(studentID);
		return SUCCESS;
	}
	//根据学号获取学生提交过的所有课程设计报告信息
	public String getKcsjMsg() {
		ActionContext.getContext().getSession().put("kcsjMsg", ss.getKcsjById(studentID));
		System.out.println(ss.getKcsjById(studentID));
		System.out.println(studentID);
		return SUCCESS;
	}
	//根据班级ID查询学生所有的课程名称
	  public String getKcMsg() {
	  ActionContext.getContext().getSession().put("kcMsg",ss.getKcById(getClassID()));
	  System.out.println(ss.getKcById(getClassID()));
	  return SUCCESS; 
	  }
	//添加学生,根据class ID获得Class对象
	public String addStudentInput() {
		HttpServletRequest request=ServletActionContext.getRequest();
		List<Class> cList=ss.getAllClassList();
		request.setAttribute("cList", cList);
		return SUCCESS;
	}
	//添加学生信息
		public String addStudent() {
			System.out.println(studentID+" "+classID);
			//ss.addStudent(student);
			Class classes = ss.getClassById(classID);
			System.out.println(classes);
			ss.addStudent(studentID, sname, ssex, sage, password, classes);
			return SUCCESS;
		}
	//根据studentID delete学生信息
	 public String deleteBystudentID() {
		//System.out.println(student);
			ss.deleteBystudentID(studentID);
			  return SUCCESS;
	 }
	//获得class对象信息,用于admin修改学生信息
	    public String getAllClassList() {
			return SUCCESS;
	    }
	  //管理员更新学生信息
	 public String adminUpdateStudent() {
	    System.out.println(studentID+" "+classID);
	    	System.out.println("123456");
	    	Class classes = ss.getClassById(classID);
	    	ss.adminUpdaetStudent(studentID, sname, ssex, sage, password, classes);
	    	return SUCCESS;
	}
	//根据学生ID查找学生信息（对象）
	 public String studentUpdate() {
	    	System.out.println(studentID);
	    	HttpServletRequest request=ServletActionContext.getRequest();
	    	Student student=ss.queryStudentById(studentID);
	    	request.setAttribute("student", student);
	    	System.out.println("修改个人信息"+" "+student);
	    	return SUCCESS;
	    }
	 //更新学生信息
	 public String studentUpdate01() {
		 System.out.println("修改后的信息=:"+studentID+" "+sname+" "+ssex+" "+sage+" "+password);
	    	Class classes = ss.getClassById(classID);
	        System.out.println("classID="+classes.getClassID());
	    	ss.adminUpdaetStudent(studentID, sname, ssex, sage, password, classes);
	    	return SUCCESS;
	 }
	 //学生修改密码传值
	 public String updateStudentPassword() {
	    	HttpServletRequest request=ServletActionContext.getRequest();
	    	Student student=ss.queryStudentById(studentID);
	    	request.setAttribute("student", student);
	    	System.out.println("修改密码"+" "+student);
	    	return SUCCESS;
	    }
	//学生修改密码
	 public String upadteStudentPassword01() {
	    	if(password.equals(password01)) {
	    		ActionContext.getContext().getSession().put("loginError", "");
	    		System.out.println(password+" "+password01);
	        	System.out.println("学号"+studentID+"班级号"+classID);
	    		Class classes = ss.getClassById(classID);
	        	ss.adminUpdaetStudent(studentID, sname, ssex, sage, password, classes);
	        	ActionContext.getContext().getSession().put("updatePasswordSuccess", "修改密码成功！请重新登录");
	        	return SUCCESS;
	    	}else {
	    		ActionContext.getContext().getSession().put("loginError", "两次输入密码不一致，请从新输入！");
	    		return ERROR;
	    	}
	    }
	public Integer getStudentID() {
		return studentID;
	}
	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getClassID() {
		return classID;
	}
	public void setClassID(Integer classID) {
		this.classID = classID;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSsex() {
		return ssex;
	}
	public void setSsex(String ssex) {
		this.ssex = ssex;
	}
	public Integer getSage() {
		return sage;
	}
	public void setSage(Integer sage) {
		this.sage = sage;
	}
	public String getPassword01() {
		return password01;
	}
	public void setPassword01(String password01) {
		this.password01 = password01;
	}
}
