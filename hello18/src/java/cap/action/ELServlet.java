package cap.action;
import cap.bean.Admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@WebServlet("/el")
public class ELServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<Integer,String> map = new HashMap<Integer,String>();
        map.put(0, "星期日");
        map.put(1,"星期一");
        map.put(2,"星期二");
        map.put(3,"星期三");
        map.put(4,"星期四");
        map.put(5,"星期五");
        map.put(6,"星期六");


        //集合数据
        List<String> list = new ArrayList<String>();
        list.add("星期日");
        list.add("星期一");
        list.add("星期二");
        list.add("星期三");
        list.add("星期四");
        list.add("星期五");
        list.add("星期六");

        //数组数据
        String[] strArray = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" };
        //对象数据
        Admin admin=new Admin("star","star");


        req.getSession().setAttribute("admin",admin);
        req.getSession().setAttribute("week",strArray);
        req.getSession().setAttribute("list",list);
        req.setAttribute("map",map);
        req.getRequestDispatcher("el.jsp").forward(req,resp);
    }
}
