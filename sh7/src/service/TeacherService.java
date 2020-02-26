package service;

import pojo01.College;

public interface TeacherService {
	
	//添加老师
	public void addTeache(Integer teacherID,String teacherName,String sex,Integer age,String password,College college);
	//管理员更新老师信息
	public void adminteachertUpdate(Integer teacherID,String teacherName,String sex,Integer age,String password,College college);
	//老师批改作业
	public void updateKcsj(Integer kscjID,String score);
}
