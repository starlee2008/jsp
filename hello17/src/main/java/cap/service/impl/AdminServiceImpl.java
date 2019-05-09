package cap.service.impl;

import cap.bean.Admin;
import cap.dao.AdminDAO;
import cap.dao.impl.AdminDAOImpl;
import cap.service.AdminService;

public class AdminServiceImpl implements AdminService {
    private AdminDAO adminDAO=new AdminDAOImpl();
    @Override
    public int login(Admin admin) {
        return adminDAO.login(admin);
    }
}
