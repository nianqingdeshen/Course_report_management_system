package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.StudentService;
import service.StudentServiceImpl;

public class ClassAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private StudentService ss=new StudentServiceImpl();
	
	public String getClassList() {
		ActionContext.getContext().getSession().put("classList", ss.getAllClassList());
		System.out.println(ss.getAllClassList());
		return SUCCESS;
	}
}
