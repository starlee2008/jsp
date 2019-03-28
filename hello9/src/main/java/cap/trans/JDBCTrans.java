package cap.trans;

import cap.db.DBCon;

import java.sql.*;

public class JDBCTrans {

    public void trans() {
        DBCon dbCon = new DBCon();
        Connection connection = dbCon.getConnection();
        try {
            //手动开始事务
            connection.setAutoCommit(false);
            String sql = "insert into admin(username,password) values(?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(sql);

            //插入第1条数据
            preparedStatement.setObject(1, "tom");
            preparedStatement.setObject(2, "tom");
            preparedStatement.executeUpdate();

            //插入第2条数据
            preparedStatement.setObject(1, "jack");
            preparedStatement.setObject(2, "jack");
            preparedStatement.executeUpdate();

            int i = 10 / 0;

            //插入第3条数据
            preparedStatement.setObject(1, "tony");
            preparedStatement.setObject(2, "tony");
            preparedStatement.executeUpdate();

            //提交事务
            connection.commit();

        } catch (Exception e) {
            e.printStackTrace();
            try {
                connection.rollback();
            } catch (SQLException e1) {
                e1.printStackTrace();
            }
        }
    }
}
