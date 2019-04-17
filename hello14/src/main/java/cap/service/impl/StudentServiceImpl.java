package cap.service.impl;

import cap.bean.Student;
import cap.dao.StudentDAO;
import cap.dao.impl.StudentDAOImpl;
import cap.service.StudentService;
import cap.util.PageBean;

import java.util.List;

public class StudentServiceImpl implements StudentService {
    private StudentDAO studentDAO=new StudentDAOImpl();
    @Override
    public PageBean findByPage(int pageNo, int pageSize) {
        PageBean pageBean=new PageBean();
        List<Student> studentList=studentDAO.findByPage(pageNo,pageSize);
        int total=studentDAO.getTotalRecords();
        pageBean.setList(studentList);
        pageBean.setTotalRecords(total);
        pageBean.setPageNo(pageNo);
        pageBean.setPageSize(pageSize);
        return pageBean;
    }
}
