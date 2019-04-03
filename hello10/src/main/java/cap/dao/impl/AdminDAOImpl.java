package cap.dao.impl;

import cap.bean.Admin;
import cap.dao.AdminDAO;
import cap.db.DBCon;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdminDAOImpl implements AdminDAO {
    private DBCon dbCon = null;

    @Override
    public int login(String username, String password) {
        int result = 0;
        try {
            dbCon = new DBCon();
            String sql = "select * from admin where username=? and password=?";
            ResultSet resultSet = dbCon.doQuery(sql, new Object[]{username, password});
            if (resultSet.next())
                result = 1;
            else
                result = -1;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbCon.close();

        }
        return result;
    }

    @Override
    public int login(Admin admin) {
        int result = 0;
        try {
            dbCon = new DBCon();
            String sql = "select * from admin where username=? and password=?";
            ResultSet resultSet = dbCon.doQuery(sql, new Object[]{admin.getUsername(), admin.getPassword()});
            if (resultSet.next())
                result = 1;
            else
                result = -1;
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbCon.close();

        }
        return result;
    }

    @Override
    public List<Admin> findAll() {
        List<Admin> adminList = new ArrayList<>();
        try {
            dbCon = new DBCon();
            String sql = "select * from admin";
            ResultSet resultSet = dbCon.doQuery(sql, new Object[]{});
            while (resultSet.next()) {
                Admin admin = new Admin();
                admin.setId(resultSet.getInt("id"));
                admin.setUsername(resultSet.getString("username"));
                admin.setPassword(resultSet.getString("password"));
                adminList.add(admin);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbCon.close();
        }
        return adminList;

    }

    public int delete(int id) {
        int result = 0;
        try {
            dbCon = new DBCon();
            String sql = "delete from admin where id=?";
            result = dbCon.doUpdate(sql, new Object[]{id});
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbCon.close();

        }
        return result;
    }
}
