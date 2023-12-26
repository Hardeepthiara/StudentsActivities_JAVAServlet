<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="studentactivities.servlets.StudentActivityBean" %>
<%@ page import="studentactivities.servlets.addactivityservlet" %>
<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    
         <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
</head>
<body>
    
    <%@ include file="header.jsp" %>

    <div>
		  
		<section class="product-details spad">
			<div class="container">
			<div class="row">
			
				<%
				String eventid = request.getParameter("eventId");
				int eid=0,activityid=0;
				eid = Integer.parseInt(eventid);
				if(eid <= 4){activityid =1;};
				if(eid >4 && eid<=8){activityid =2;};
				if(eid >8  && eid<=12){activityid =3;};
				if(eid >12){activityid =4;};
				
				List<StudentActivityBean> sportsEvents = addactivityservlet.getStudentActivities(activityid); // Assuming 1 represents sports events
				// Repeat the same for other event types by changing the type value
				%>
				
				<% 
				for (StudentActivityBean event : sportsEvents) {
					int eventid1=  event.getActId();
					if(eventid1 == eid){
					%>
					<div class="section-title  text-center">
							<h4 style="font-size: 35px"><%= event.getActName() %></h4>
						</div>
					
            	</div>
				<div class="col-lg-12">
					<div class="product__details__text">
						
							<div class="rating">
							
							<%= event.getActStartDate() %>  - <%= event.getActEndDate() %>
							</div>
					</div>
				</div>
					
				<div class="col-lg-12">
					<img src="Image/banner/<%= event.getActInnerImg() %>" alt="Banner 1" style="width: 100%; height: 550px;">
				</div>
				  
				<div class="col-lg-12">
					<div class="product__details__tab">
						   
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<h4><%=event.getActDesc() %> </h4>
								
							</div>								
						</div>
					</div><% }} %>
				</div>          
				
			</div>
		</section>
		
	</div>
   <%@ include file="footer.jsp" %>
</body>
</html>
