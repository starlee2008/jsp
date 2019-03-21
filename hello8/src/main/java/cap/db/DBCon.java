package cap.db;

import java.sql.*;

public class DBCon {
    private String driver="com.mysql.jdbc.Driver";
    private String url="jdbc:mysql://localhost:3306/cap?serverTimezone=UTC";
    private String user="root";
    private String pass="admin";
    private Connection connection=null;

    public Connection getConnection(){
        try {
            Class.forName(driver);
            connection=DriverManager.getConnection(url,user,pass);
        }catch (Exception e){
            e.printStackTrace();
        }
        return connection;
    }

    public ResultSet doQuery(String sql,Object[] params){
        ResultSet resultSet=null;
        getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            for(int i=0;i<params.length;i++){
                preparedStatement.setObject(i+1,params[i]);
            }
            resultSet=preparedStatement.executeQuery();
        }catch (Exception e){
            e.printStackTrace();
        }
        return  resultSet;

    }
    public int doUpdate(String sql,Object[] params){
        int result=0;
        getConnection();
        try {
            PreparedStatement preparedStatement=connection.prepareStatement(sql);
            for(int i=0;i<params.length;i++){
                preparedStatement.setObject(i+1,params[i]);
            }
            result=preparedStatement.executeUpdate();
        }catch (Exception e){
            e.printStackTrace();
        }
        return  result;

    }
    public void close()  {
        if(connection!=null) {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
