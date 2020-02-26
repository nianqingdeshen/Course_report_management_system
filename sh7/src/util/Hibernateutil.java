package util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class Hibernateutil {
	private static SessionFactory factory;
	private static Configuration configuration;
	static {
		configuration= new Configuration().configure();
		//虚拟机结束时
		Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() {

			@Override
			public void run() {
				factory.close();
				System.out.println("123456");
			}
		}));
	}
	
	public static Session openSession() {
		factory=configuration.buildSessionFactory();
		return factory.openSession();
	}
	
	public static Session getCurrentSession() {
		factory=configuration.buildSessionFactory();
		return factory.getCurrentSession();
	}
}
