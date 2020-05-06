package com.javawebtutor.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import java.util.Iterator;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import com.javawebtutor.hibernate.util.HibernateUtil;
import com.javawebtutor.model.Inbox;
import com.javawebtutor.model.issued;

public class ckStatus extends HttpServlet {

	
	//public void doGet(HttpServletRequest request, HttpServletResponse response, Object parse)
	//		throws ServletException, IOException {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {


		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		
			
		String sender=(String)session.getAttribute("username");
		System.out.println(sender);
		
		
		if(session.getAttribute("username")!=null){
			String username=(String)session.getAttribute("username");		
			out.print("<font style='color:navy'>Welcome "+username+"</font>");
		
		
		}
		
		
		 String ans = request.getParameter("adha");
		 
 Session sessio = HibernateUtil.openSession();
		 
		 sessio.beginTransaction();
		 
		 Criteria criteria =sessio.createCriteria(issued.class);
		 criteria.add(Restrictions.eq("adrn",ans));
		 List<issued> inbo=(List<issued>)criteria.list();
		 sessio.getTransaction().commit();
		/* 
		 Iterator<issued> iter = inbo.iterator();
		 
		 while(iter.hasNext()){
			    //Getb the iterated element
			   issued user = (issued) iter.next();
			  out.println(iter.next() + " "); 
//out.println("issued");
			    //Check for the subs 
			    //use the get () getter to get the list of subs
			    if(user.getAdrn().isEmpty()) {
			    out.println("not issued");
			    }
			}
			
			*/
		 
		 
		 out.print("<table align='left' width='70%' border='4' bgcolor='###FFF'>");
		 
		 out.print("<tr><th>Adhaar No.</th><th>Name</th><th>Valid From</th><th>Valid To</th><th>Print e-Pass</th></tr>");
		 
		 
		 for(issued i : inbo)
		 {
			 
			 out.print("<tr>");
				out.print("<td>" +i.getAdrn() + "</td>");
				out.print("<td>" + i.getName() + "</td>");
				out.print("<td>" + i.getFir() + "</td>");
				out.print("<td>" + i.getLas() + "</td>");
				out.print("<td><a href='PdfGen'>Print</a></td>");
			// System.out.println(i.getSender());
			// System.out.println(i.getMsg());
			 out.print("</tr>");
		 }out.print("<br>");
		 out.print("<br>");
		 
		
	}
}
	