package cap.service;

import cap.bean.Student;

import java.util.List;

public interface StudentService {
    List<Student> findAll();
    Student findById(int id);
    int delStudent(int id);
    int addStudent(Student stu);
    int updateStudent(Student stu);
}
