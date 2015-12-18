package com.jaangu.service;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.jaangu.hibernate.util.HibernateUtil;
import com.jaangu.model.User;

public class LoginService {
	
	public boolean authenticateUser(String email, String password) {
        User user = getUserByUserEmail(email);         
        if(user!=null && user.getEmail().equals(email) && user.getPassword().equals(password)){
            return true;
        }else{
            return false;
        }
       }
        
	public User getUserByUserEmail(String email) {
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
        Transaction tx = null;
        User user = null;
        try {
            tx = session.beginTransaction();
            Query query = session.createQuery("select email from customer where email='"+email+"'");
            user = (User)query.uniqueResult();
            session.save(user);
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } 
        finally {
            session.close();
        }
        return user;
    }

}
