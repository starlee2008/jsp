package cap.db;

import java.sql.*;

public class DBCon {
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String url = "jdbc:mysql://localhost:3306/cap?serverTimezone=UTC";
    private String user = "root";
    private String pass = "admin";
    private Connection connection;

    public Connection getConnection() {
        try {
            Class.forName(driver);
            connection = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    public ResultSet doQuery(String procedure, Object[] params) {
        ResultSet resultSet = null;
        getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall(procedure);
            for (int i = 0; i < params.length; i++) {
                callableStatement.setObject(i + 1, params[i]);
            }
            resultSet = callableStatement.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultSet;

    }
    public int doUpdate(String procedure, Object[] params) {
        int result = 0;
        getConnection();
        try {
            CallableStatement callableStatement = connection.prepareCall(procedure);
            for (int i = 0; i < params.length; i++) {
                callableStatement.setObject(i + 1, params[i]);
            }
            result = callableStatement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;

    }
    public void close(){
        if (connection!=null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
