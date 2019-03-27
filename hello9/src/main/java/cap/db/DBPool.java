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
