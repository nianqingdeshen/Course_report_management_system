package action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.StudentService;
import service.StudentServiceImpl;

public class Kcsj_courseAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	
	private StudentService ss=new StudentServiceImpl();
	
	public String getKcsjList() {
		ActionContext.getContext().getSession().put("kcsjList", ss.getAllKcsjList());
		System.out.println(ss.getAllKcsjList());
		return SUCCESS;
	}
	
}
