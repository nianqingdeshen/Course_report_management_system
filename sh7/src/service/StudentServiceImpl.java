package service;


import java.sql.Date;
import java.util.List;



import org.hibernate.Criteria;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;

import pojo01.Class;
import pojo01.College;
import pojo01.Course;
import pojo01.Kcsj;
import pojo01.Kcsj_course;
import pojo01.St_cl_co;
import pojo01.Student;
import pojo01.Student_kcsj;
import pojo01.Teacher;
import util.Hibernateutil;
import util.Hibernateutil1;

public class StudentServiceImpl implements StudentService{
	
	//根据班级ID和课程ID查找课程设计报告的信息
	@Override
	public List<Student_kcsj> getKcsjByClassIDCourseID(Integer classID, Integer courseID) {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Student_kcsj.class);
		//查询条件
		Criterion criterion =Restrictions.and(Restrictions.eq("classID",classID),
				Restrictions.eq("courseID",courseID));
		criteria.add(criterion);
		//执行Criteria的list()获得结果集
		List<Student_kcsj> list =criteria.list();
		System.out.println(list);
		session.close();
		return list;
	}
	private Query createQuery;
	//查询所有学生信息
	@Override
	public List<Student> getAllStudentList() {
		Session session= Hibernateutil.openSession();
		Criteria criteria= session.createCriteria(Student.class);
		List<Student> list=criteria.list();
	
		return list;
	}
	//根据学号和密码查询学生信息
	@Override
	public Student getStudentByNameAndPwd(String studentID, String password) {
		Session session= Hibernateutil.openSession();
		SQLQuery query = (SQLQuery) session.createSQLQuery("select * from student where studentID='"+studentID+"' and password='"+password+"'");
		query.addEntity(Student.class);
		Student student=(Student) query.uniqueResult();
		session.close();
		return student;
	}
	
	//查询所有课程设计报告信息
	@Override
	public List<Kcsj_course> getAllKcsjList() {
		Session session= Hibernateutil.openSession();
		Criteria criteria= session.createCriteria(Kcsj_course.class);
		List<Kcsj_course> list=criteria.list();
		session.close();
		return list;
	}
	//查询所有老师信息
	@Override
	public List<Teacher> getAllTeacherList() {
		Session session= Hibernateutil.openSession();
		Criteria criteria= session.createCriteria(Teacher.class);
		List<Teacher> list=criteria.list();
		session.close();
		return list;
	}
	//查询所有学院信息
	@Override
	public List<College> getAllCollegeList() {
		Session session= Hibernateutil.openSession();
		Criteria criteria= session.createCriteria(College.class);
		List<College> list=criteria.list();
		session.close();
		return list;
	}
	//查询所有课程信息
	@Override
	public List<Course> getAllCourseList() {
		Session session= Hibernateutil.openSession();
		Criteria criteria= session.createCriteria(Course.class);
		List<Course> list=criteria.list();
		session.close();
		return list;
	}
	//查询所有课程信息
	@Override
	public List<Class> getAllClassList() {
		Session session= Hibernateutil.openSession();
		Criteria criteria= session.createCriteria(Class.class);
		List<Class> list=criteria.list();
	
		return list;
	}
	//根据学号查询学生个人信息
	@Override
	public List<Student> getStudentById(Integer studentID) {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Student.class);
		//查询条件
		criteria.add(Restrictions.eq("studentID",studentID));
		//执行Criteria的list()获得结果集
		List<Student> list =criteria.list();
		System.out.println(list);
		session.close();
		return list;
	}
	//根据学号查询学生提交过的所有课程设计
	@Override
	public List<Kcsj_course> getKcsjById(Integer studentID) {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Kcsj_course.class);
		//根据学号查询
		criteria.add(Restrictions.eq("studentID",studentID));
		//执行Criteria的list()获得结果集
		List<Kcsj_course> list =criteria.list();
		session.close();
		return list;
	}
	
	//根据学生班级ID查询学生所有的课程
	@Override
	public List<St_cl_co> getKcById(Integer classID) {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(St_cl_co.class);
		//根据学生班级ID查询
		criteria.add(Restrictions.eq("classID",classID));
		//执行Criteria的list()获得结果集
		List<St_cl_co> list = criteria.list();
		session.close();
		return list;
	}
	//根据工号和密码查询教师的信息（需要从表单获取）
	@Override
	public Teacher getTeacherByNameAndPwd(String teacherID, String password) {
		Session session= Hibernateutil.openSession();
		SQLQuery query = (SQLQuery) session.createSQLQuery("select * from teacher where teacherID='"+teacherID+"' and password='"+password+"'");
		query.addEntity(Teacher.class);
		Teacher teacher=(Teacher) query.uniqueResult();
		session.close();
		return teacher;
	}
	
	//根据教师工号查询教师教授的课程列表(通过老师工号查询课程表)
	@Override
	public List<Course> getCourseByTeacherId(Integer teacherID) {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Course.class);
		//根据老师ID查询course表
		criteria.add(Restrictions.eq("teacherID",teacherID));
		//执行Criteria的list()获得结果集
		List<Course> list = criteria.list();
		session.close();
		return list;
	}
	//根据课程ID在st_cl_co视图中查询班级名称
	@Override
	public List<St_cl_co> getCalssNameByCourseID(Integer courseID) {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(St_cl_co.class);
		//根据课程ID查询班级名称
		criteria.add(Restrictions.eq("courseID",courseID));
		//执行Criteria的list()获得结果集
		List<St_cl_co> list = criteria.list();
	
		return list;
	}
	//根据班级ID查询这个班级的所有学生
	@Override
	public List<Student> getStudentByClassID(Integer classID) {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Student.class);
		//根据课程ID查询班级名称
		criteria.add(Restrictions.eq("class1",classID));
		//执行Criteria的list()获得结果集
		List<Student> list = criteria.list();
		session.close();
		return list;
	}
	//根据工号查询教师的所有信息
	@Override
	public List<Teacher> getTeacherMsgByTeacherID(Integer teacherID) {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Teacher.class);
		//根据教师ID查询教师的所有信息
		criteria.add(Restrictions.eq("teacherID",teacherID));
		//执行Criteria的list()获得结果集
		List<Teacher> list = criteria.list();
		session.close();
		return list;
	}
	//添加学生
	@Override
	public void addStudent(Integer studentID, String sname, String ssex, Integer sage, String password,
			Class classes) {
		// TODO Auto-generated method stub
		Session session= Hibernateutil1.getSession();
		Transaction transaction = session.beginTransaction();
		Student student=new Student();
		student.setStudentID(studentID);
		student.setSsex(ssex);
		student.setPassword(password);
		student.setSage(sage);
		student.setSname(sname);
		session.save(student);
		
		student.setClass1(classes);
		
		classes.getStudent().add(student);
		session.save(student);
		transaction.commit();
		session.close();
	}
	//根据classID获取所有班级信息
	@Override
	public Class getClassById(Integer classID) {
		// TODO Auto-generated method stub
				Session session=null;
				Class classes=null;
				session=Hibernateutil1.getSession();
				classes=(Class) session.get(Class.class, classID);
				return classes;
	}
	
	//根据学号删除学生
	@Override
	public void deleteBystudentID(Integer studentID) {
		// TODO Auto-generated method stub
		Session session=Hibernateutil1.getSession();
		session.beginTransaction();
		Student student = (Student) session.load(Student.class, studentID);
		session.delete(student);
		session.getTransaction().commit();
		session.close();
	}
	//修改学生信息
	@Override
	public void adminUpdaetStudent(Integer studentID, String sname, String ssex, Integer sage, String password,
			Class clases) {
		Session session=Hibernateutil1.getSession();
		session.beginTransaction();
		
		Student student=new Student();
		student.setClass1(clases);
		student.setPassword(password);
		student.setSage(sage);
		student.setSname(sname);
		student.setSsex(ssex);
		student.setStudentID(studentID);
		
		clases.getStudent().add(student);
		session.update(student);
		session.getTransaction().commit();
		System.out.println("测试："+student);
		session.close();
		
	}
	//根据学生ID查找学生信息（对象）
	@Override
	public Student queryStudentById(Integer studentID) {
		Session session=null;
		Student student=null;
		session=Hibernateutil1.getSession();
		student=(Student) session.get(Student.class, studentID);
		System.out.println(student);
		return student;
	}
	@Override
	public College getAllCollegeById(Integer collegeID) {
		Session session=null;
		College college=null;
		session=Hibernateutil1.getSession();
		college=(College) session.get(College.class, collegeID);
		return college;
	}
	@Override
	public Teacher getTeacherByteacherID(Integer teacherID) {
		Session session=null;
		Teacher teacher=null;
		session=Hibernateutil1.getSession();
		teacher=(Teacher) session.get(Teacher.class, teacherID);
		return teacher;
	}
	
	@Override
	public void insert_kcsj_count(Integer studentID, Integer courseID, Integer classID, String kname) {
		// TODO Auto-generated method stub
		Session session=Hibernateutil1.getSession();
		session.beginTransaction();
		Date time= new java.sql.Date(new java.util.Date().getTime());
		Kcsj k = new Kcsj();
		k.setCourseID(courseID);
		k.setKname(kname);
		k.setScore("未批改");
		k.setStudentID(studentID);
		k.setGetTime(time);
		//String sql="update class_course set count=count+1 where classID='"+classID+"' and courseID='"+courseID+"'";
		SQLQuery query = session.createSQLQuery("update class_course set count=count+1 where classID='"+classID+"' and courseID='"+courseID+"'");
		int i = query.executeUpdate();
		session.save(k);
		session.getTransaction().commit();
		session.close();
	}

	
}
