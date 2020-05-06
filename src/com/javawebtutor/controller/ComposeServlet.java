package com.javawebtutor.controller;

import java.io.IOException;
import java.math.*;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.javawebtutor.controller.SendMessage;
import com.javawebtutor.model.Govdata;
import com.javawebtutor.model.Inbox;
import com.javawebtutor.model.User;
import com.javawebtutor.model.epass;
import com.javawebtutor.service.EpassService;
import com.javawebtutor.service.GovdataService;
import com.javawebtutor.service.LoginService;
import com.javawebtutor.service.RegisterService;
public class ComposeServlet extends HttpServlet {

	
	//public void doGet(HttpServletRequest request, HttpServletResponse response, Object parse)
	//		throws ServletException, IOException {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException {


		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		HttpSession session=request.getSession(false);
		
			
		String sender=(String)session.getAttribute("username");
		System.out.println(sender);
	/*	
	//	String reciever=request.getParameter("reciever_id");
	//	System.out.println(reciever);
		//String msg=request.getParameter("message");
		System.out.println(msg);
		
		 java.util.Date sqdate=Calendar.getInstance().getTime();
			java.sql.Date dat =new java.sql.Date(sqdate.getTime());

			DateFormat df = new SimpleDateFormat("dd-MM-yyyy HH:mm:ss");
			String text = df.format(dat);
			
			
			
	
			
			// System.out.println(reciever);
			// System.out.println(userz.getUserId());
			
				
				Inbox inbo =new Inbox(sender,reciever,msg,text);
		
			 SendMessage sm = new SendMessage();
			 boolean result = sm.register(inbo);
			 */
		
		 response.setContentType("text/html;charset=UTF-8");
		 response.setHeader("Cache-Control","no-cache,no-store ,must-revalidate");
		 
		 String an = request.getParameter("aad");
		 String contact = request.getParameter("conta");
		 String fname = request.getParameter("firstName");
		 String address = request.getParameter("add");
		 String ser= request.getParameter("reqo");
		 String fd= request.getParameter("start");
		 String ld= request.getParameter("stop");
		 String em= request.getParameter("email");
		
		 GovdataService loginService = new GovdataService();
		Govdata gov = loginService.getUserByUserId(an);
		// String dd=gov.getAdhar();
		 
		
		 
		 epass ep = new epass(an,contact,fname,address,ser,fd,ld,em);
		// System.out.println(ser);
		// System.out.println(fd);
		// System.out.println(ld);
		// System.out.println(em);
		 
		//System.out.println("after");
		
		 
		
		 try {	
			 EpassService registerService = new EpassService();
			 boolean result = registerService.register(ep);		
			 out.println("<html>");
			 out.println("<head>");		
			 out.println("<title>Registration Successful</title>");		
			 out.println("</head>");
			 out.println("<body>");
			 out.println("<center>");
			 if(result){
				 
				// System.out.println(ser);
				// System.out.println(fd);
				// System.out.println(ld);
				// System.out.println(em);
				 out.println("<h1>Thanks for Requesting a Pass with us :</h1>");
				 out.println("To Check the the status of you pass <a href=Status.jsp>Click here</a>");
				
				 
				 
			 }else{
			//	 System.out.println(ser);
			//	 System.out.println(fd);
				// System.out.println(ld);
			//	 System.out.println(em);
				// System.out.println("nononono");
				 out.println("<h1>Pass Registration Failed</h1>");
				 out.println("To try again<a href=compose.jsp>Click here</a>");
			 }
			 out.println("</center>");
			 out.println("</body>");
			 out.println("</html>");
		 
		 
		 }
		 
		 finally {		
			 out.close();
		 

		 }
		
			 
		 
			}
			
			
			
		
		//int i=SendMessage.sendMsg(sender,reciever,msg);
		//if(i>0){
			
	            //int j=parse.Integer(reciever);
				//if(j>0){
		
		
	}



