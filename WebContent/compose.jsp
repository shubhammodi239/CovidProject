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
							<h2>ePass/e-Pass!</h2></br>
							<b></br><p><h2>Register with adhar number is mandatory</p></h2></b>
</br><p>Enter travel details, reasonable purpose, travel date, destination, vehicle information and related documents</p>
</br><p>Enter information about the people who come with you</p>
</br><p>Get the pass sent by the district officer on his registered mobile number</strong></br>
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
								
				<h6\><center>Register Here -</h6></center></br>
<form action="ComposeServlet" method="POST">
 <center>
<table align="center" cellpadding = "10">

<tr>
<td>Aadhar number: *</td>
<td><input type="text" name="aad" maxlength="30"/>
(16 digits)
</td>
</tr>

<tr>
<td> Contact number: *</td>
<td><input type="text" name="conta" maxlength="30"/>
(max 10 )
</td>
</tr>

<tr>
<td> Name of applicant: *</td>
<td><input type="text" name="firstName" maxlength="30"/>

</td>
</tr>
<tr>
<td>Address of office or place of engagement:</td>
<td><input type="text" name="add" maxlength="30"/>

</td>
</tr>


<tr>
<td>Type of service:</td>
<td><select name="reqo" >
<option>-------------------</option>
<option>Food items,groceries(Fruits/vegetables/milk/bakery items,meat,fish etc.)</option>
<option>General Provision stores</option>
<option>Take away/home delivery in restaurants.</option>
<option>E-commerce of all essential goods including food, pharmaceutical and medical equipment</option>	
<option>Fair price shops (public distribution system )</option>
<option> Health(including veterinary health care facilities)  </option>
<option> Electricity </option>
<option> Water </option>
<option> Milk plants  </option>
<option> Cashier/teller operations of banks(including ATMs) </option>
<option>chemists and pharmacies  </option>
<option>print and electronic media  </option>
<option>Telecom,internet and postal services  </option>
<option> petrol pumps,LPG/CNG/Oil agencies </option>
<option>Animal fooder  </option>
<option> Construction/ maintenance/manufacturing,processing,transportation,distribution, </option>
<option> Fire </option>
<option>Muncipal services  </option>
<option>Activities related to functioning of legislative assembly </option>
<option> Police </option>
<option> offices charged with law and order and magisterial duties </option>
<option>Any other essential services  </option>
</select>

</td>
</tr>


<tr>
<td>From date:</td>
<td><input type="date" id="abc" name="start">

</td>
</tr>
 
 <tr>
<td>Till date date:</td>
<td><input type="date" id="abc" name="stop">

</td>
</tr>
 
 
 
<tr>
<td>Email *</td>
<td><input type="email" name="email" maxlength="100" /></td>
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