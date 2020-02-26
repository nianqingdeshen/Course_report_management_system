package action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.StudentService;
import service.StudentServiceImpl;



public class FileUploadAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	private File file;
	private String fileFileName;
	private String fileContentType;
	private Integer classID;
	private Integer courseID;
	private Integer studentID;
	private StudentService ss=new StudentServiceImpl();
	public String execute() throws Exception {
		
	    InputStream is = new FileInputStream(file);	
        String uploadPath = ServletActionContext.getServletContext().getRealPath("/upload");
		File toFile=new File(uploadPath, this.getFileFileName());
		OutputStream oStream=new FileOutputStream(toFile);
		byte[] buffer=new byte[1024];		
		while(-1!=(is.read(buffer,0,buffer.length))) {
			oStream.write(buffer);
			}
		is.close();
		oStream.close();
		ActionContext.getContext().getSession().put("upload", "sjt");
		return SUCCESS;
	}
	public String updown(){
		System.out.println("123456789!!!!!!");
		ActionContext.getContext().getSession().put("upload", " ");
System.out.println(classID);
		System.out.println(courseID);
		System.out.println(studentID);

		return SUCCESS;
	}
	public String insert_kcsj_count(){
		System.out.println("sjt123asd!!!");
		System.out.println(fileFileName);
		System.out.println(classID);
		System.out.println(courseID);
		System.out.println(studentID);
		ss.insert_kcsj_count(studentID, courseID, classID, fileFileName);
		return SUCCESS;
	}
	public File getFile() {
		return file;
	}
	public void setFile(File file) {
		this.file = file;
	}
	public String getFileFileName() {
		return fileFileName;
	}
	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

	public Integer getClassID() {
		return classID;
	}

	public void setClassID(Integer classID) {
		this.classID = classID;
	}

	public Integer getCourseID() {
		return courseID;
	}

	public void setCourseID(Integer courseID) {
		this.courseID = courseID;
	}
	public Integer getStudentID() {
		return studentID;
	}
	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}
}
