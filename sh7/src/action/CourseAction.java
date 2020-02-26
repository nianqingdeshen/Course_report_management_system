package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.StudentService;
import service.StudentServiceImpl;

public class CourseAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private StudentService ss=new StudentServiceImpl();
	
	public String getCourseList() {
		ActionContext.getContext().getSession().put("courseList", ss.getAllCourseList());
		System.out.println(ss.getAllCourseList());
		return SUCCESS;
	}
}
