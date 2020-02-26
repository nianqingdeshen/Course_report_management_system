package service;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;

import pojo01.College;
import pojo01.Student;
import pojo01.Teacher;
import util.Hibernateutil1;

public class TeacherServiceImpl implements TeacherService{

	//insert老师信息
	@Override
	public void addTeache(Integer teacherID, String teacherName, String sex, Integer age, String password,
			College college) {
		// TODO Auto-generated method stub
		Session session= Hibernateutil1.getSession();
		Transaction transaction = session.beginTransaction();
		Teacher teacher=new Teacher();
		teacher.setAge(age);
		teacher.setPassword(password);
		teacher.setSex(sex);
		teacher.setTeacherID(teacherID);
		teacher.setTeacherName(teacherName);
		teacher.setCollege(college);
		college.getTeacher().add(teacher);
		session.save(teacher);
		System.out.println("insert老师信息:"+teacher);
		transaction.commit();
		session.close();
	}
//更新老师信息
	@Override
	public void adminteachertUpdate(Integer teacherID, String teacherName, String sex, Integer age, String password,
			College college) {
		// TODO Auto-generated method stub
		Session session=Hibernateutil1.getSession();
		session.beginTransaction();
		Teacher teacher=new Teacher();
		teacher.setAge(age);
		teacher.setCollege(college);
		teacher.setPassword(password);
		teacher.setSex(sex);
		teacher.setTeacherID(teacherID);
		teacher.setTeacherName(teacherName);
		college.getTeacher().add(teacher);
		session.update(teacher);
		session.getTransaction().commit();
		session.close();
	}
	@Override
	public void updateKcsj(Integer kscjID,String score) {
		// TODO Auto-generated method stub
		Session session=Hibernateutil1.getSession();
		session.beginTransaction();
		//String sql="update class_course set count=count+1 where classID='"+classID+"' and courseID='"+courseID+"'";
		SQLQuery query = session.createSQLQuery("update kcsj  set score= '"+score+"' where kscjID='"+kscjID+"'");
		int i = query.executeUpdate();
		session.getTransaction().commit();
		session.close();
		
	}

	

}
