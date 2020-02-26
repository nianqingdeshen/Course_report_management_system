package action;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Date;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import service.TeacherService;
import service.TeacherServiceImpl;

public class SimpleDownLoadAction extends ActionSupport{
	
	
	private static final long serialVersionUID = 1L;
	private TeacherService tt=new TeacherServiceImpl();
	private String filename; // 代表下载文件的名称
	private String contentType; // 下载文件的MimeType
	private Integer classID;
	private Integer courseID;
	private String kname;
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
	public String getKname() {
		return kname;
	}
	public void setKname(String kname) {
		this.kname = kname;
	}
	public Integer getKscjID() {
		return kscjID;
	}
	public void setKscjID(Integer kscjID) {
		this.kscjID = kscjID;
	}
	public Date getGettime() {
		return gettime;
	}
	public void setGettime(Date gettime) {
		this.gettime = gettime;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public Integer getStudentID() {
		return studentID;
	}
	public void setStudentID(Integer studentID) {
		this.studentID = studentID;
	}
	private Integer kscjID;
	private Date gettime;
	private String score;
	private Integer studentID;
	public String download() {
		System.out.println(kname);
		System.out.println(kscjID);
		ActionContext.getContext().getSession().put("download", " ");
		return SUCCESS;
	}
	public String updateKcsj() {
		System.out.println("ididid=="+kscjID);
		System.out.println("fenshu"+score);
		tt.updateKcsj(kscjID, score);
		return SUCCESS;
	}
	/**
	 * 获取文件的名称
	 */
	public String getFilename() throws IOException {
		//对不同浏览器传过来的文件名进行编码
		return encodeDownloadFilename(filename,ServletActionContext
				                               .getRequest()
				                               .getHeader("User-Agent"));
	}
	public void setFilename(String filename) 
			                throws UnsupportedEncodingException{
		//对文件名称编码
		
		this.filename = filename;
	}
	/**
	 * 获取文件的类型
	 * @return
	 * */
	public String getContentType() {
		return  ServletActionContext.getServletContext()
				                    .getMimeType(filename);
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}

	//定义了返回InputStream的方法，该方法作为被下载文件的入口
	public InputStream getDownloadFile() throws IOException{
		 //要下载的文件的路径
		String filepath = "/upload/"+filename;
		System.out.println(filepath);
		return ServletActionContext.getServletContext()
			   .getResourceAsStream(filepath);
	}
	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
	 /**
     * 对不同浏览器传过来的文件名称进行转码
     * @param name 文件名称
     * @param agent 浏览器
     * @return 转码后的名称
     * @throws IOException
     */
	public String encodeDownloadFilename(String name, String agent)
			throws IOException {
	 // IE及其他浏览器
		name = URLEncoder.encode(name, "utf-8");
	return name;
	}
}

