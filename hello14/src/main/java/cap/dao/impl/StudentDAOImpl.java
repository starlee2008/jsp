package cap.dao.impl;

import cap.bean.Student;
import cap.dao.StudentDAO;
import cap.db.DBCon;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class StudentDAOImpl implements StudentDAO {
    private DBCon dbCon = null;

    @Override
    public List<Student> findByPage(int pageNo, int pageSize) {
        List<Student> studentList = new ArrayList<>();
        try {
            dbCon = new DBCon();
            String sql = "select * from student limit ?,?";
            //查询的开始位置
            int start = (pageNo - 1) * pageSize;
            ResultSet resultSet = dbCon.doQuery(sql, new Object[]{start, pageSize});
            while (resultSet.next()) {
                Student stu = new Student();
                stu.setId(resultSet.getInt("id"));
                stu.setName(resultSet.getString("name"));
                stu.setPhone(resultSet.getString("phone"));
                stu.setAddress(resultSet.getString("address"));
                studentList.add(stu);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            dbCon.close();

        }
        return studentList;
    }

    @Override
    public int getTotalRecords() {
       int total=0;
       try{
           dbCon=new DBCon();
           String sql="select count(*) as t from student";
           ResultSet resultSet=dbCon.doQuery(sql,new Object[]{});
           if(resultSet.next()){
               //total=resultSet.getInt(1);
               total=resultSet.getInt("t");
           }
       }catch (Exception e){
           e.printStackTrace();
       }finally {
           dbCon.close();

       }
       return total;
    }
}
