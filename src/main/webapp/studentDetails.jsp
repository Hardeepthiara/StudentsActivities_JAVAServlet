<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ page import="java.util.List"%>
<%@ page import="studentactivities.dao.*"%>
<%@ page import="studentactivities.models.*"%>

<!DOCTYPE html>

<html>
<head>

	<title>Student Data</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
	<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
	<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
	<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
	<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
	<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
	<link rel="stylesheet" href="css/style.css" type="text/css">
<!--  for banner -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

	<%@ include file="adminHeader.jsp"%>

	<div class="container">
					<div class="section-title mt-5 text-center">
							<h4 style="font-size: 35px">Students Data</h4>
						</div>
		<table class="table table-bordered">
			<thead class="thead-dark">
				<tr>
					<th>ID</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
<!-- 					<th>Password</th>
 -->				<th>Course</th>
					<th>Term</th>
					<th>Gender</th>
					<th>Delete</th>
					<th>Update</th>
				</tr>
			</thead>
			<tbody>
				<% 
                    StudentDAO studentDAO = new StudentDAO();
                    List<Student> students = studentDAO.getAllStudents();

                    for (Student student : students) {
                %>
				<tr>
					<td><%= student.getId() %></td>
					<td><%= student.getFirstName() %></td>
					<td><%= student.getLastName() %></td>
					<td><%= student.getEmail() %></td>
<%-- 					<td><%= student.getPassword() %></td>
 --%>					<td><%= student.getCourse() %></td>
					<td><%= student.getTerm() %></td>
					<td><%= student.getGender() %></td>
					<td>
						<form method="post" action="deleteStudent">
							<input type="hidden" name="studentId"
								value="<%= student.getId() %>">
							<button type="submit" class="btn btn-danger btn-sm">Delete</button>
						</form>
					</td>
					<td>
						<!-- Button to trigger the modal -->
						<button type="button" class="btn btn-primary btn-sm"
							data-toggle="modal"
							data-target="#updateStudent<%= student.getId() %>">
							Update</button> <!-- Modal -->
						<div class="modal fade" id="updateStudent<%= student.getId() %>"
							tabindex="-1" role="dialog"
							aria-labelledby="updateStudentLabel<%= student.getId() %>"
							aria-hidden="true">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<h5 class="modal-title"
											id="updateStudentLabel<%= student.getId() %>">Update
											Student Details</h5>
										<button type="button" class="close" data-dismiss="modal"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
									</div>
									<div class="modal-body">
										<!-- Update form -->
										<form action="updateStudent" method="post">
											<!-- Add input fields with pre-filled values from the student object -->
											<!-- For example: -->
											<input type="hidden" name="studentId"
												value="<%= student.getId() %>"> First Name: <input
												type="text" name="firstName"
												value="<%= student.getFirstName() %>" class="form-control"><br>
											Last Name: <input type="text" name="lastName"
												value="<%= student.getLastName() %>" class="form-control"><br>
											Email: <input type="email" name="email"
												value="<%= student.getEmail() %>" class="form-control"><br>
											Course: <input type="text" name="course"
												value="<%= student.getCourse() %>" class="form-control"><br>
											Term: <input type="text" name="term"
												value="<%= student.getTerm() %>" class="form-control"><br>
											Gender:
											<select name="gender" class="form-control">
						                            <option value="Male" <%= student.getGender().equals("male") ? "selected" : "" %>>Male</option>
						                            <option value="Female" <%= student.getGender().equals("female") ? "selected" : "" %>>Female</option>
						                            <!-- Add other gender options as needed -->
						                        </select><br>
											<button type="submit" class="btn btn-primary">Save
												changes</button>
										</form>
									</div>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<%
                    }
                %>
			</tbody>
		</table>
		<% 
            String message = request.getParameter("message");
            if (message != null && !message.isEmpty()) {
        %>
		<div class="alert alert-success" role="alert">
			<%= message %>
		</div>
		<%
            }
        %>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<jsp:include page="footer.jsp" />

</body>
</html>
