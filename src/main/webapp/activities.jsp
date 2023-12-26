
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="studentactivities.servlets.StudentActivityBean"%>
<%@ page import="studentactivities.servlets.addactivityservlet"%>
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
	<%@ include file="header.jsp"%>

	<div>

		<!-- Product Section Begin -->
		<section class="product spad">
			<div class="container">
				<div class="row">
					<!-----------------------Event 1----------------------------------------->
					<div class=" col-sm-10  col-sm-2">
						<div class="section-title">
							<h4>Sports Events</h4>
						</div>
					</div>

					<% 
				List<StudentActivityBean> sportsEvents = addactivityservlet.getStudentActivities(1); // Assuming 1 represents sports events
				// Repeat the same for other event types by changing the type value
				%>
					<% 
				for (StudentActivityBean event : sportsEvents) {
					
					%>
					<!-- Product 1 -->
					<div class="col-lg-3 col-md-4 col-sm-6 mix kids">
						<a href="acadamic.jsp?eventId=<%= event.getActId() %>">
							<div class="product__item">
								<div class="product__item__pic ">
									<img class="product__item__pic" id="<%= event.getActId() %>"
										src="Image/posters/<%= event.getActImg() %>"
										alt="Girls Buckle Decor Flats, Glamorous Party Glitter Mary Jane Flats">
								</div>
							</div>
						</a>
					</div>

					<%} %>
					<!-----------------------Event 2----------------------------------------->
					<div class=" col-sm-10  col-sm-2">
						<div class="section-title">
							<h4>Academic Events</h4>
						</div>
					</div>
					<% 
				List<StudentActivityBean> sportsEvents1 = addactivityservlet.getStudentActivities(2); // Assuming 1 represents sports events
				// Repeat the same for other event types by changing the type value
				%>
					<% 
				for (StudentActivityBean event : sportsEvents1) {
					
					%>

					<!-- Product 1 -->
					<div class="col-lg-3 col-md-4 col-sm-6 mix kids">
						<a href="acadamic.jsp?eventId=<%= event.getActId() %>">
							<div class="product__item">
								<div class="product__item__pic ">
									<img class="product__item__pic" id="<%= event.getActId() %>" src="Image/posters/<%= event.getActImg() %>" alt="Girls Buckle Decor Flats, Glamorous Party Glitter Mary Jane Flats">
								</div>
							</div>
						</a>
					</div>
					<%} %>


					<!-----------------------Event 3----------------------------------------->


					<div class=" col-sm-10  col-sm-2">
						<div class="section-title">
							<h4>Voluntary Work Events</h4>
						</div>
					</div>
					<% 
				List<StudentActivityBean> sportsEvents2 = addactivityservlet.getStudentActivities(3); // Assuming 1 represents sports events
				// Repeat the same for other event types by changing the type value
				%>
					<% 
				for (StudentActivityBean event : sportsEvents2) {
					
					%>

					<!-- Product 1 -->
					<div class="col-lg-3 col-md-4 col-sm-6 mix kids">
						<a href="acadamic.jsp?eventId=<%= event.getActId() %>">
							<div class="product__item">
								<div class="product__item__pic ">
									<img class="product__item__pic" id="<%= event.getActId() %>"
										src="Image/posters/<%= event.getActImg() %>"
										alt="Girls Buckle Decor Flats, Glamorous Party Glitter Mary Jane Flats">

								</div>
							</div>
							</a>
					</div>
					<%} %>

					<!-----------------------Event 4----------------------------------------->
					<div class=" col-sm-10  col-sm-2">
						<div class="section-title">
							<h4>Culture & Art Events</h4>
						</div>
					</div>


					<% 
				List<StudentActivityBean> sportsEvents4 = addactivityservlet.getStudentActivities(4); // Assuming 1 represents sports events
				// Repeat the same for other event types by changing the type value
				%>
					<% 
				for (StudentActivityBean event : sportsEvents4) {
					
					%>

					<!-- Product 1 -->
					<div class="col-lg-3 col-md-4 col-sm-6 mix kids">
						<a href="acadamic.jsp?eventId=<%= event.getActId() %>">
							<div class="product__item">
								<div class="product__item__pic ">
									<img class="product__item__pic" id="<%= event.getActId() %>"
										src="Image/posters/<%= event.getActImg() %>"
										alt="Girls Buckle Decor Flats, Glamorous Party Glitter Mary Jane Flats">

								</div>
							</div>
							</a>
					</div>
					<%} %>


				</div>
			</div>
		</section>
		<!-- Product Section End -->
	</div>


	<jsp:include page="footer.jsp" />
</body>
</html>