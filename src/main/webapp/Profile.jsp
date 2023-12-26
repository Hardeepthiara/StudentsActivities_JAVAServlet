<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page import="studentactivities.dao.StudentDAO" %>
<%@ page import="studentactivities.models.Student" %>
<%
    // Get the student ID from the session (change "loginUserId" to the session attribute name storing the ID)
    int UserId = (int) session.getAttribute("loginUserId");

    // Fetch student details using the ID
    StudentDAO studentDAO = new StudentDAO();
    Student student = studentDAO.getStudentById(UserId); // Implement this method in your StudentDAO

    // Check if student details exist for the given ID
    if (student != null) {
        // Display the retrieved student details
%>

<!DOCTYPE html>
<html>
<head>
    <title>Profile</title>

<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/contact.css" type="text/css">
    
    <!--  for banner -->
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
        <%@ include file="header.jsp" %>
     <div>
    <section class="contact spad">
						<div class="section-title  text-center">
							<h4 style="font-size: 35px">My Profile</h4>
						</div>
            
		    	
				<div class="container border rounded p-4 shadow-lg mb-5">
					<div style="padding:100px">
					<h2 class="mb-4" style="text-align: left; color: #1570b8;font-weight: 600;">Name:</h2>
					<p style="text-align: left;font-size: 30px;font-family: emoji; line-height:35px;color: black;"><%= student.getFirstName() %> <%= student.getLastName() %></p>
					
		
					
					<h2 class="mb-4" style="text-align: left; color: #1570b8;font-weight: 600;">Email:</h2>
					<p style="text-align: left;font-size: 30px;font-family: emoji;line-height:35px;color: black;"><%= student.getEmail() %></p>

					<h2 class="mb-4" style="text-align: left; color: #1570b8;font-weight: 600;">Gender:</h2>
					<p style="text-align: left;font-size: 30px;font-family: emoji;line-height:35px;color: black;"><%= student.getGender() %> </p>

					<h2 class="mb-4" style="text-align: left; color: #1570b8;font-weight: 600;">Course:</h2>
					<p style="text-align: left; font-size: 30px; font-family: emoji;line-height:35px; color: black;">
						    <% 
						        String courseCode = student.getCourse();
						        String fullForm = "";
						
						        if ("FSDM".equals(courseCode)) {
						            fullForm = "Full Stack Software Development";
						        } else if ("QEMT".equals(courseCode)) {
						            fullForm = "Quality Engineering Management";
						        } else if ("CPMT".equals(courseCode)) {
						            fullForm = "Construction Project Management";
						        }
						        
						        out.print(fullForm);
						    %>
						</p>

					<h2 class="mb-4" style="text-align: left; color: #1570b8;font-weight: 600;">Term:</h2>
					<p style="text-align: left;font-size: 30px;font-family: emoji;line-height:35px;color: black;"><%= student.getTerm() %></p>

					</div>
				    <div class="custom-image-container col-md-6">
				        <picture class="d-inline-block mt-8 mt-md-0">
				            <img loading="lazy" class="img-fluid" src="Images/profile1.jpeg" title="international-students" alt="Two international students standing outside looking at a phone and smiling.">
				        </picture>
				    </div>
				</div>
		   
		            
	             
		            
		  
		                
		    </section>
    
     </div>
    <%@ include file="footer.jsp" %>
</body>
</html>
<%
    } else {
        // Handle case where student details for the ID are not found
        out.println("Student details not found for ID: " + UserId);
    }
%>
