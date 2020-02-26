package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.StudentService;
import service.StudentServiceImpl;

public class CollegeAction extends ActionSupport {
private static final long serialVersionUID = 1L;
	
	private StudentService ss=new StudentServiceImpl();
	
	public String getCollegeList() {
		ActionContext.getContext().getSession().put("collegeList", ss.getAllCollegeList());
		System.out.println(ss.getAllCollegeList());
		return SUCCESS;
	}
}
