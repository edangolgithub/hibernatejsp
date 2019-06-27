package hib;

import java.util.List;

import org.hibernate.Session;  
import org.hibernate.SessionFactory;  
import org.hibernate.Transaction;  
import org.hibernate.cfg.Configuration;  
   
public class UserDao {    
	 static  SessionFactory factory=null; 
public static int register(User u){    
 int i=0;    
  
 factory= new Configuration().configure().buildSessionFactory();
Session session = factory.openSession();  
Transaction t = session.beginTransaction();   
  
i=(Integer)session.save(u);    
  
t.commit();    
session.close();    
    
return i;    
   
 }    


public static List<User> GetUsers()
{
	 factory= new Configuration().configure().buildSessionFactory();
	 Session session = factory.openSession();  
	 Transaction t = session.beginTransaction();   
	@SuppressWarnings("unchecked")
	List<User> ulist=  session.createQuery("From User").list();
	t.commit();
	session.close();
	for (User user : ulist) {
		System.out.println(user.getName());
	}
	return ulist;
	
}
}    