package cap.dao;

import cap.bean.Student;

import java.util.List;

public interface StudentDAO {
    List<Student> findByPage(int pageNo,int pageSize);
    int getTotalRecords();
}
