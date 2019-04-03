package cap.dao.impl;

import cap.bean.Admin;
import cap.dao.AdminDAO;
import cap.db.DBCon;

import java.sql.ResultSet;

public class AdminDAOImpl implements AdminDAO {
    private DBCon dbCon=null;
    @Override
    public int login(String username, String password) {
        int result=0;
        try {
            dbCon=new DBCon();
            String sql="select * from admin where username=? and password=?";
            ResultSet resultSet=dbCon.doQuery(sql,new Object[]{username,password});
            if(resultSet.next())
                result=1;
            else
                result= -1;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbCon.close();

        }
        return result;
    }

    @Override
    public int login(Admin admin) {
        int result=0;
        try {
            dbCon=new DBCon();
            String sql="select * from admin where username=? and password=?";
            ResultSet resultSet=dbCon.doQuery(sql,new Object[]{admin.getUsername(),admin.getPassword()});
            if(resultSet.next())
                result=1;
            else
                result= -1;
        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbCon.close();

        }
        return result;
    }
}
