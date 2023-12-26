package studentactivities.servlets;

import studentactivities.dao.StudentDAO;
import studentactivities.models.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/studentProfile")
public class StudentProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false); // Retrieve the session

        if (session != null && session.getAttribute("loginUserId") != null) {
            int loginUserId = (int) session.getAttribute("loginUserId"); // Get student ID from session

            StudentDAO studentDAO = new StudentDAO();
            Student student = studentDAO.getStudentById(loginUserId); // Fetch student details by ID

            if (student != null) {
                request.setAttribute("student", student); // Set student attribute in request scope
                request.getRequestDispatcher("/Profile.jsp").forward(request, response); // Forward to profile.jsp
            } else {
                // Handle case where student details for the ID are not found
                response.getWriter().println("Student details not found for ID: " + loginUserId);
            }
        } else {
            // Handle case where the session or loginUserId attribute is null
            response.getWriter().println("Session not found or loginUserId attribute is null");
        }
    }
}
