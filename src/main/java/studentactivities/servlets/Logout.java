package studentactivities.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Logout")
public class Logout extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session != null && session.getAttribute("loginUserId") != null) {
            // Retrieve the userId from the session
            int userId = (int) session.getAttribute("loginUserId");
            
            // Set userId to 0
            session.setAttribute("loginUserId", 0);
        }
        
        response.sendRedirect("index.jsp");
    }
}
