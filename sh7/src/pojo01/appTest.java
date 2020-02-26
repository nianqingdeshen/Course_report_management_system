package pojo01;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;
import org.junit.Test;

import util.Hibernateutil;
import util.Hibernateutil1;

public class appTest {
	
	@Test
	public void test01() {
		Session session=Hibernateutil1.getSession();
		session.beginTransaction();
		College c=new College();
		c.setCollegeID(22);
		c.setCollegeName("123");
		Teacher g1=new Teacher();
		g1.setAge(11);
		g1.setPassword("123456");
		g1.setSex("123");
		g1.setTeacherID(17);
		g1.setTeacherName("456");
		Teacher g2=new Teacher();
		g2.setAge(15);
		g2.setPassword("123456");
		g2.setSex("789");
		g2.setTeacherID(64);
		g2.setTeacherName("sjt");
		g1.setCollege(c);
		g1.setCollege(c);
		c.getTeacher().add(g1);
		c.getTeacher().add(g2);
		session.save(c);
		session.save(g1);
		session.save(g2);
		session.getTransaction().commit();
		session.close();
	}
	@Test
	public void test02() {
		
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Student.class);
		//查询条件
		criteria.add(Restrictions.eq("studentID",81416202));
		//执行Criteria的list()获得结果集
		List<Student> list =criteria.list();
		for(Student s:list) {
			System.out.println(s);
		}
		session.close();
		
	}
	@Test
	public void test03() {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Course.class);
		//根据学生班级ID查询
		criteria.add(Restrictions.eq("teacherID",20161021));
		//执行Criteria的list()获得结果集
		List<Course> list = criteria.list();
		for(Course s:list) {
			System.out.println(s);
		}
		session.close();
	}
	@Test
	public void test04() {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(St_cl_co.class);
		//根据课程ID查询班级名称
		criteria.add(Restrictions.eq("courseID",3));
		//执行Criteria的list()获得结果集
		List<St_cl_co> list = criteria.list();
		for(St_cl_co s:list) {
			System.out.println(s);
		}
		session.close();
		
	}
	@Test
	public void test05() {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Student_kcsj.class);
		//查询条件
		Criterion criterion =Restrictions.and(Restrictions.eq("classID",814162),
				Restrictions.eq("courseID",1));
		criteria.add(criterion);
		//执行Criteria的list()获得结果集
		List<Student_kcsj> list =criteria.list();
		
		System.out.println(list);
		session.close();
		
	}
	@Test
	public void test06() {
		Session session= Hibernateutil.openSession();
		//通过Session获得Criteria对象
		Criteria criteria= session.createCriteria(Teacher.class);
		//根据教师ID查询教师的所有信息
		criteria.add(Restrictions.eq("teacherID",34343434));
		//执行Criteria的list()获得结果集
		List<Teacher> list = criteria.list();
		for(Teacher s:list) {
			System.out.println(s);
		}
		session.close();
	}
	@Test
	public void test07() {
		Session session= Hibernateutil.openSession();
		Criteria criteria= session.createCriteria(Student.class);
		List<Student> list=criteria.list();
		System.out.println(list);
		session.close();
	}
}
