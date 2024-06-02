package parkirkendaraan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class file_koneksi {
    private static Connection koneksi;

    public static Connection GetConnection() throws SQLException {
        if (koneksi == null) {
            try {
                // Use the newer class name
                Class.forName("com.mysql.cj.jdbc.Driver");
                koneksi = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/db_parkir?zeroDateTimeBehavior=convertToNull",
                    "root", 
                    ""
                );
            } catch (ClassNotFoundException e) {
                throw new SQLException("MySQL Driver not found", e);
            } catch (SQLException e) {
                throw new SQLException("Connection failed", e);
            }
        }
        return koneksi;
    }
}
