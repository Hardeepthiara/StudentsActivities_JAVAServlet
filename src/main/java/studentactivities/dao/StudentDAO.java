package studentactivities.dao;
import studentactivities.servlets.*;
import studentactivities.dao.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import studentactivities.models.Student;

public class StudentDAO {
    private final String jdbcURL = "jdbc:mysql://localhost:3306/studentactivities";
    private final String dbUser = "root";
    private final String dbPassword = "root";

    // Method to retrieve all students from the database
    public List<Student> getAllStudents() {
        List<Student> students = new ArrayList<>();

        try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword)) {
            String query = "SELECT * FROM users";
            try (PreparedStatement statement = connection.prepareStatement(query);
                 ResultSet resultSet = statement.executeQuery()) {
                while (resultSet.next()) {
                    Student student = new Student();
                    student.setId(resultSet.getInt("id"));
                    student.setFirstName(resultSet.getString("firstName"));
                    student.setLastName(resultSet.getString("lastName"));
                    student.setEmail(resultSet.getString("email"));
                    student.setPassword(resultSet.getString("password"));
                    student.setCourse(resultSet.getString("course"));
                    student.setTerm(resultSet.getString("term"));
                    student.setGender(resultSet.getString("gender"));

                    students.add(student);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions
        }

        return students;
    }
    public void deleteStudentById(int studentId) {
        try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword)) {
            String query = "DELETE FROM users WHERE id = ?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setInt(1, studentId);
                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions
        }
    }
    public void updateStudent(Student student) {
        try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword)) {
            String query = "UPDATE users SET firstName=?, lastName=?, email=?, course=?, term=?, gender=? WHERE id=?";
            try (PreparedStatement statement = connection.prepareStatement(query)) {
                statement.setString(1, student.getFirstName());
                statement.setString(2, student.getLastName());
                statement.setString(3, student.getEmail());
                //statement.setString(4, student.getPassword());
                statement.setString(4, student.getCourse());
                statement.setString(5, student.getTerm());
                statement.setString(6, student.getGender());
                statement.setInt(7, student.getId());

                statement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions
        }
    }
    public Student getStudentById(int studentId) {
        Student student = null;
        String query = "SELECT * FROM users WHERE id = ?";
        try (Connection connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);
             PreparedStatement statement = connection.prepareStatement(query)) {
            statement.setInt(1, studentId);
            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    student = new Student();
                    student.setId(resultSet.getInt("id"));
                    student.setFirstName(resultSet.getString("firstName"));
                    student.setLastName(resultSet.getString("lastName"));
                    student.setEmail(resultSet.getString("email"));
                   // student.setPassword(resultSet.getString("password"));
                    student.setCourse(resultSet.getString("course"));
                    student.setTerm(resultSet.getString("term"));
                    student.setGender(resultSet.getString("gender"));
                    // Set other attributes accordingly
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle exceptions
        }
        return student;
    }
}
