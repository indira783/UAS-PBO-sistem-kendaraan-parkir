package parkirkendaraan;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class KoneksiDB {
    private static Connection KoneksiDB = null;

    public static Connection getKoneksiDB() {
        if (KoneksiDB == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                KoneksiDB = DriverManager.getConnection("jdbc:mysql://localhost:3306/db_parkir", "root", "");
            } catch (ClassNotFoundException | SQLException e) {
                JOptionPane.showMessageDialog(null, e.getMessage(), "Database Connection Error", JOptionPane.ERROR_MESSAGE);
            }
        }
        return KoneksiDB;
    }

    public static int execute(String SQL) {
        try {
            Statement stmt = getKoneksiDB().createStatement();
            return stmt.executeUpdate(SQL);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "SQL Execution Error", JOptionPane.ERROR_MESSAGE);
            return -1;
        }
    }

    public static ResultSet executeQuery(String SQL) {
        try {
            Statement stmt = getKoneksiDB().createStatement();
            return stmt.executeQuery(SQL);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage(), "SQL Query Error", JOptionPane.ERROR_MESSAGE);
            return null;
        }
    }
}
