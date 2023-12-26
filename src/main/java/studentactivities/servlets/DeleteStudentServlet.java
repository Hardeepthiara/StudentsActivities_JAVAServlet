package studentactivities.servlets;

import studentactivities.dao.StudentDAO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLEncoder;

@WebServlet("/deleteStudent")
public class DeleteStudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve the student ID from the submitted form
        int studentId = Integer.parseInt(request.getParameter("studentId"));

        // Delete the student using the StudentDAO
        StudentDAO studentDAO = new StudentDAO();
        studentDAO.deleteStudentById(studentId);

        String message = URLEncoder.encode("Row deleted successfully", "UTF-8");
        response.sendRedirect(request.getContextPath() + "/studentDetails.jsp?message=" + message);
        // Redirect back to the displayStudents.jsp after deletion
        //response.sendRedirect(request.getContextPath() + "/studentDetails.jsp");
    }
}
