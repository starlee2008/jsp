package cap.db;

import org.apache.commons.dbcp2.BasicDataSourceFactory;

import javax.sql.DataSource;
import java.sql.*;
import java.util.Properties;

public class DBPool {
    private Connection connection=null;


    public Connection getConnection() {
        try {
            Properties properties=new Properties();
            properties.load(DBPool.class.getClassLoader().getResourceAsStream("db.properties"));
            DataSource dataSource= BasicDataSourceFactory.createDataSource(properties);
            connection=dataSource.getConnection();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    public ResultSet doQuery(String sql, Object[] params) {
        ResultSet resultSet = null;
        getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                preparedStatement.setObject(i + 1, params[i]);
            }
            resultSet = preparedStatement.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return resultSet;

    }
    public int doUpdate(String sql, Object[] params) {
        int result = 0;
        getConnection();
        try {
            PreparedStatement preparedStatement = connection.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                preparedStatement.setObject(i + 1, params[i]);
            }
            result = preparedStatement.executeUpdate();
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
