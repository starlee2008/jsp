package cap.dao;

import cap.bean.Admin;

public interface AdminDAO {
    int login(String username,String password);
    int login(Admin admin);
}
