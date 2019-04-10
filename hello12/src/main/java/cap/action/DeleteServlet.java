package cap.action;



import cap.db.DBCon;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/del")
public class DeleteServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id=Integer.parseInt(req.getParameter("id"));
        DBCon dbCon=new DBCon();
        String sql="delete from admin where id=?";
        int result=dbCon.doUpdate(sql,new Object[]{id});
        if(result>0)
            req.getRequestDispatcher("query").forward(req,resp);
        else{
            PrintWriter writer=resp.getWriter();
            writer.println("delete error");
            writer.close();
        }

    }
}
