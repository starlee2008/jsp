package cap.action;

import cap.bean.Admin;
import cap.db.DBCon;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/query")
public class QueryServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        DBCon dbCon=new DBCon();
        String sql="select * from admin";
        ResultSet resultSet=dbCon.doQuery(sql,new Object[]{});
        List<Admin> adminList=new ArrayList<>();
        try{
            while (resultSet.next()){
                Admin admin=new Admin();
                admin.setId(resultSet.getInt("id"));
                admin.setUsername(resultSet.getString("username"));
                admin.setPassword(resultSet.getString("password"));
                adminList.add(admin);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        req.getSession().setAttribute("admins",adminList);
        //resp.sendRedirect("adminList.jsp");
        req.getRequestDispatcher("adminList.jsp").forward(req,resp);




    }
}
