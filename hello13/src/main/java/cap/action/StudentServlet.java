package cap.action;

import cap.bean.Student;
import cap.service.StudentService;
import cap.service.impl.StudentServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/stu")
public class StudentServlet extends HttpServlet {
    private StudentService studentService=new StudentServiceImpl();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String p=req.getParameter("p");
        if(p.equals("add")){
            String name=req.getParameter("name");
            String phone=req.getParameter("phone");
            Student stu=new Student(name,phone);
            int result=studentService.addStudent(stu);
            if(result>0)
                req.getRequestDispatcher("stu?p=list").forward(req,resp);
            else{
                req.getSession().setAttribute("errMsg","add error");
                req.getRequestDispatcher("error.jsp").forward(req,resp);
            }


        }
        else if(p.equals("list")){
            List<Student> studentList=studentService.findAll();
            req.getSession().setAttribute("stus",studentList);
            req.getRequestDispatcher("stuList.jsp").forward(req,resp);
        }
        else if(p.equals("del")){
            int id=Integer.parseInt(req.getParameter("id"));
            int result=studentService.delStudent(id);
            if(result>0)
                req.getRequestDispatcher("stu?p=list").forward(req,resp);
            else{
                req.getSession().setAttribute("errMsg","delete error");
                req.getRequestDispatcher("error.jsp").forward(req,resp);
            }
        }
        else if(p.equals("edit")){
            int id=Integer.parseInt(req.getParameter("id"));
            Student student=studentService.findById(id);
            req.getSession().setAttribute("stu",student);
            req.getRequestDispatcher("stuEdit.jsp").forward(req,resp);
        }
        else if(p.equals("update")){
            int id=Integer.parseInt(req.getParameter("id"));
            String name=req.getParameter("name");
            String phone=req.getParameter("phone");
            Student student=new Student(id,name,phone);
            int result=studentService.updateStudent(student);
            if(result>0)
                req.getRequestDispatcher("stu?p=list").forward(req,resp);
            else{
                req.getSession().setAttribute("errMsg","update error");
                req.getRequestDispatcher("error.jsp").forward(req,resp);
            }
        }

    }
}
