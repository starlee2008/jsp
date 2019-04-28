package cap.action;

import cap.bean.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username=req.getParameter("username");
        String password=req.getParameter("password");
        Admin admin=new Admin(username,password);
        if(admin.getUsername().equals("成航")&&admin.getPassword().equals("成航")){
            req.getSession().setAttribute("admin",admin);
            req.getRequestDispatcher("index.jsp").forward(req,resp);
        }else{
            req.setAttribute("errMsg","用户名或者密码错误，请重新登录");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }

    }
}
