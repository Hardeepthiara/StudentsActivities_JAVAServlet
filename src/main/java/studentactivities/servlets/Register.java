package studentactivities.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Replace these with your actual database details
    static final String DB_URL = "jdbc:mysql://localhost:3306/studentactivities";
    static final String DB_USER = "root";
    static final String DB_PASSWORD = "root";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieving form data
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String reEmail = request.getParameter("reEmail");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");
        String course = request.getParameter("course");
        String term = request.getParameter("term");
        String gender = request.getParameter("gender");

       
        if (firstName.isEmpty() || lastName.isEmpty() || email.isEmpty() || reEmail.isEmpty() || password.isEmpty() || confirmPassword.isEmpty() || course.isEmpty() || term.isEmpty() || gender.isEmpty()) 
        {
            response.sendRedirect("Error.jsp?message=Please fill in all fields");
            return;
        }

        if (!email.equals(reEmail)) {
            response.sendRedirect("Error.jsp?message=Emails do not match");
            return;
        }

        if (!isValidEmail(email)) {
            response.sendRedirect("Error.jsp?message=Invalid email format");
            return;
        }
        if (!password.equals(confirmPassword)) {
            response.sendRedirect("Error.jsp?message=Passwords do not match");
            return;
        }
      //  if (gender.isEmpty()) {
       //     response.sendRedirect("Error.jsp?message=Please select Gender");
       //     return;
       // }

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Register JDBC driver
            //Class.forName("com.mysql.jdbc.Driver");
        	Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // SQL query to insert user data into the users table
            String sql = "INSERT INTO users(firstName, lastName, email, password, course, term, gender) VALUES (?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, firstName);
            stmt.setString(2, lastName);
            stmt.setString(3, email);
            stmt.setString(4, password);
            stmt.setString(5, course);
            stmt.setString(6, term);
            stmt.setString(7, gender);

            // Execute the query
            stmt.executeUpdate();

            // Redirect to a success page or any other page
            System.out.println("Success");
            response.sendRedirect("Success.jsp");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace(); // Handle exceptions appropriately
            
            response.sendRedirect("Error.jsp");


        } finally {
            // Close resources
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    private boolean isValidEmail(String email) {
        String emailRegex = "^[A-Za-z0-9+_.-]+@(.+)$";
        return email.matches(emailRegex);
    }
}
