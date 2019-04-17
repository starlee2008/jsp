package cap.action;

import cap.service.StudentService;
import cap.service.impl.StudentServiceImpl;
import cap.util.PageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/stu")
public class StudentServlet extends HttpServlet {
    private StudentService studentService=new StudentServiceImpl();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action=req.getParameter("action");
        if(action.equals("list")){
            int pageNo=0;
            String str=req.getParameter("pageNo");
            if(str==null)
                pageNo=1;
            else
                pageNo=Integer.parseInt(str);

            PageBean pageBean=studentService.findByPage(pageNo,5);
            req.getSession().setAttribute("pageBean",pageBean);
            req.getRequestDispatcher("stuList.jsp").forward(req,resp);
        }

    }
}
