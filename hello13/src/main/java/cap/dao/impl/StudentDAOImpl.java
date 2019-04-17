package cap.dao.impl;

import cap.bean.Student;
import cap.dao.StudentDAO;
import cap.db.DBCon;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDAOImpl implements StudentDAO {
    private DBCon dbCon=null;
    @Override
    public List<Student> findAll() {
        List<Student> students=new ArrayList<>();
        try {
            dbCon=new DBCon();
            String sql="select * from student";
            ResultSet resultSet=dbCon.doQuery(sql,new Object[]{});
            while (resultSet.next()){
                Student stu=new Student();
                stu.setId(resultSet.getInt("id"));
                stu.setName(resultSet.getString("name"));
                stu.setPhone(resultSet.getString("phone"));
                students.add(stu);
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbCon.close();
        }
        return students;
    }

    @Override
    public Student findById(int id) {
        Student stu=new Student();
        try {
            dbCon=new DBCon();
            String sql="select * from student where id=?";
            ResultSet resultSet=dbCon.doQuery(sql,new Object[]{id});
            if (resultSet.next()){
                stu.setId(resultSet.getInt("id"));
                stu.setName(resultSet.getString("name"));
                stu.setPhone(resultSet.getString("phone"));
            }

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbCon.close();
        }
        return stu;
    }

    @Override
    public int delStudent(int id) {
        int result=0;
        try {
            dbCon=new DBCon();
            String sql="delete from student where id=?";
            result=dbCon.doUpdate(sql,new Object[]{id});

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbCon.close();

        }
        return result;
    }

    @Override
    public int addStudent(Student stu) {
        int result=0;
        try {
            dbCon=new DBCon();
            String sql="insert into student(name,phone) values(?,?)";
            result=dbCon.doUpdate(sql,new Object[]{stu.getName(),stu.getPhone()});

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbCon.close();

        }
        return result;
    }

    @Override
    public int updateStudent(Student stu) {
        int result=0;
        try {
            dbCon=new DBCon();
            String sql="update student set name=?,phone=? where id=?";
            result=dbCon.doUpdate(sql,new Object[]{stu.getName(),stu.getPhone(),stu.getId()});

        }catch (Exception e){
            e.printStackTrace();
        }finally {
            dbCon.close();

        }
        return result;
    }
}
