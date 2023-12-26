package studentactivities.servlets;

import studentactivities.models.*;
import studentactivities.dao.*;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/displayStudents")
public class studentDetails extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Create an instance of the DAO class
        StudentDAO studentDAO = new StudentDAO();

        // Retrieve student data from the DAO
        List<Student> students = studentDAO.getAllStudents();

        // Set the retrieved data as an attribute in the request object
        request.setAttribute("studentsList", students);

        // Forward the request to the JSP for presentation
        request.getRequestDispatcher("/displayStudents.jsp").forward(request, response);
    }
}
