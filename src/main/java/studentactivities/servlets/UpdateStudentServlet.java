package studentactivities.servlets;

import studentactivities.dao.StudentDAO;
import studentactivities.models.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateStudent")
public class UpdateStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form parameters
        int studentId = Integer.parseInt(request.getParameter("studentId"));
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String course = request.getParameter("course");
        String term = request.getParameter("term");
        String gender = request.getParameter("gender");

        // Create a Student object with updated details
        Student updatedStudent = new Student(studentId, firstName, lastName, email, password, course, term, gender);

        // Update the student using the StudentDAO
        StudentDAO studentDAO = new StudentDAO();
        studentDAO.updateStudent(updatedStudent);

        // Redirect back to the studentDetails.jsp with a success message
        response.sendRedirect(request.getContextPath() + "/studentDetails.jsp?message=Student details updated successfully");
    }
}
