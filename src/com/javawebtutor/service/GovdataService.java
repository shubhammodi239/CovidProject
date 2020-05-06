package com.javawebtutor.service;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.javawebtutor.hibernate.util.HibernateUtil;
import com.javawebtutor.model.Govdata;
import com.javawebtutor.model.User;

public class GovdataService {
	
	public Govdata getUserByUserId(String userId) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
       Govdata user = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query query = session.createQuery("from Govdata where adhar='"+userId+"'");
            user = (Govdata)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return user;
    }
	

}
