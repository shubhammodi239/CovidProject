package com.javawebtutor.service;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.javawebtutor.hibernate.util.HibernateUtil;
import com.javawebtutor.model.User;
import com.javawebtutor.model.epass;

public class EpassService {
	
	
	
	public boolean register(epass user){
		 Session session = HibernateUtil.openSession();
		 System.out.println(user.getAno());
		 System.out.println(user.getFdate());
		 System.out.println(user.getMail());
		 if(isReqExists(user)) return false;	
		
		 Transaction tx = null;	
		 try {
			 tx = session.getTransaction();
			 tx.begin();
			 session.saveOrUpdate(user);
			 
			 tx.commit();
			// System.out.println(user.getAno());
			// System.out.println(user.getFdate());
			// System.out.println(user.getMail());
			 
		 } catch (Exception e) {
			 if (tx != null) {
				 tx.rollback();
			 }
			 e.printStackTrace();
		 } finally {
			 session.close();
		 }	
		 return true;
	}
	
	
	public boolean isReqExists(epass user){
		 Session session = HibernateUtil.openSession();
		 boolean result = false;
		 Transaction tx = null;
		 try{
			 tx = session.getTransaction();
			 tx.begin();
			 Query query = session.createQuery("from epass where ano='"+user.getAno()+"'");
			 epass u = (epass)query.uniqueResult();
			 
			
			// System.out.println(user.getAno());
			// System.out.println(user.getFdate());
			// System.out.println(user.getMail());
			 tx.commit();
			 if(u!=null) result = true;
		 }catch(Exception ex){
			 if(tx!=null){
				 tx.rollback();
			 }
		 }finally{
			 session.close();
		 }
		 return result;
	}

}
