package studentactivities.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC URL, username, and password of MySQL server
    static final String DB_URL = "jdbc:mysql://localhost:3306/studentactivities";
    static final String DB_USER = "root";
    static final String DB_PASSWORD = "root";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email.isEmpty() || password.isEmpty()) {
            request.setAttribute("loginError", "Please enter both email and password.");
            request.getRequestDispatcher("index.jsp").forward(request, response);
            return;
        }

        int userId = validateUser(email, password);
        if(userId > 0)
        {
        	
        	HttpSession session = request.getSession();
        	session.setAttribute("loginUserId", userId); // Setting studentLoginId in session

        	if (session != null && session.getAttribute("loginUserId") != null) {
        	    // Student login ID is present in the session
        	    int loginId = (int) session.getAttribute("loginUserId");
        	    System.out.println(loginId);

        	    // Perform actions when the login ID is present in the session
        	} else {
        	    System.out.println("not found");
        	    // Student login ID is not present in the session or session doesn't exist
        	    // Handle the scenario accordingly
        	}

        	
        }

        if (userId != -1) {
            boolean isAdmin = checkAdmin(userId);

            if (isAdmin) {
                response.sendRedirect("adminHome.jsp");
            } else {
                response.sendRedirect("Home.jsp");
            }

            //updateIsLogin(userId);
        } else {
            request.setAttribute("loginError", "Invalid email or password!");
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }
    }

    private int validateUser(String email, String password) {
        int userId = -1;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "SELECT id FROM users WHERE email = ? AND password = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, password);

            rs = stmt.executeQuery();
            
            if (rs.next()) {
                userId = rs.getInt("id");
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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
        return userId;
    }

    private boolean checkAdmin(int userId) {
        boolean isAdmin = false;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "SELECT isAdmin FROM users WHERE id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, userId);

            rs = stmt.executeQuery();

            if (rs.next()) {
                isAdmin = rs.getInt("isAdmin") == 1;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
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
        return isAdmin;
    }

    private void updateIsLogin1(int userId) 
    {
        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            String sql = "UPDATE users SET isLogin = 1 WHERE id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, userId);

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
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
}
