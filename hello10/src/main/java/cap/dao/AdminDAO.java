package cap.dao;

import cap.bean.Admin;

import java.util.List;

public interface AdminDAO {
    int login(String username,String password);
    int login(Admin admin);
    List<Admin> findAll();
}
