
 
 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <%@page import="com.javawebtutor.model.User"%>
    
    <link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/style2.css" rel="stylesheet" type="text/css" />
     <jsp:include page="header.jsp"></jsp:include>
<div id="main">
			<div class="5grid">
				<div class="main-row">
					<div class="4u-first">
						
						<section>
							<h2>Welcome to Mailservices!</h2>
							<p>Hi! This is <strong>Mail Services</strong>, a free service  for Mailing system.
							You can perform all email operation,Currently  it stores the information in database
							it's free of cost.Let's try it..
							</p>
							
						</section>
					
					</div>
					<div class="4u">
						
						<section>
							
							<ul class="small-image-list">
								
					<li>
									<div>
									<% 
									
									response.setHeader("Cache-Control","no-cache,no-store ,must-revalidate");
									
								if(session.getAttribute("username")!=null){
								String username=(String)session.getAttribute("username");		
								out.print("<font style='color:navy'>Welcome "+username+"</font>");
								}
								else{
								request.setAttribute("Error1","Plz Do login First");
								%>
								<jsp:forward page="login.jsp"></jsp:forward>
									<%}
								%>
								<% 
								if(request.getAttribute("compose")!=null){
								String compose= (String)request.getAttribute("compose");
								out.print("<font style='color:navy'>"+compose+"</font>");
								}
								if(request.getAttribute("composeerr")!=null){
								String composeerr= (String)request.getAttribute("composeerr");
								out.print("<font style='color:navy'>"+composeerr+"</font>");
								}
								%>
								
								
									</div>
									
						</li>			
								
				<h6\><center>Check Status  Here -</h6></center></br>
<form action="ckStatus" method="POST">
 <center>
<table align="center" cellpadding = "10">

<tr>
<td>Enter Aadhar number: *</td>
<td><input type="text" name="adha" maxlength="30"/>
(max 30 characters a-z and A-Z)
</td>
</tr>


<tr>
<td colspan="2" align="center">
<input type="submit" value="Submit">
<input type="reset" value="Reset">
</td>
</tr>
</table>

 
</form>
 </center>
							</span>
										 
		
							
								
							</ul>
						</section>
					
					</div>
					<div class="4u">
					
					

					</div>
				</div>
				
			</div>
		</div>

<jsp:include page="footer.html"></jsp:include>