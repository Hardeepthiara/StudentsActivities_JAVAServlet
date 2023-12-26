package studentactivities.servlets;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class addactivityservlet {
	
	public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentactivities", "root", "root");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }
	
	public static  List<StudentActivityBean> getStudentActivities(int actType) {
        List<StudentActivityBean> activities = new ArrayList<>();
        try {
            Connection connection = getConnection();
            PreparedStatement ps = connection.prepareStatement("SELECT * FROM studentactivities.student_activities WHERE Act_type = ?");
            ps.setInt(1, actType);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                StudentActivityBean activity = new StudentActivityBean();
                activity.setActId(rs.getInt("Act_id"));
                activity.setActName(rs.getString("Act_name"));
                activity.setActDesc(rs.getString("Act_desc"));
                activity.setActImg(rs.getString("Act_img"));
                activity.setActInnerImg(rs.getString("Act_inner_img"));
                activity.setActStartDate(rs.getString("Act_start_date"));
                activity.setActEndDate(rs.getString("Act_end_date"));
                activity.setActStatus(rs.getInt("Act_status"));
                activity.setActType(rs.getInt("Act_type"));
                activities.add(activity);
            }
            connection.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return activities;
    }

}
