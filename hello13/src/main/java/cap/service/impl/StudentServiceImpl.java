package cap.service.impl;

import cap.bean.Student;
import cap.dao.StudentDAO;
import cap.dao.impl.StudentDAOImpl;
import cap.service.StudentService;

import java.util.List;

public class StudentServiceImpl implements StudentService {
    private StudentDAO studentDAO=new StudentDAOImpl();
    @Override
    public List<Student> findAll() {
        return studentDAO.findAll();
    }

    @Override
    public Student findById(int id) {
        return studentDAO.findById(id);
    }

    @Override
    public int delStudent(int id) {
        return studentDAO.delStudent(id);
    }

    @Override
    public int addStudent(Student stu) {
        return studentDAO.addStudent(stu);
    }

    @Override
    public int updateStudent(Student stu) {
        return studentDAO.updateStudent(stu);
    }
}
