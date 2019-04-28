package cap.uitl;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebFilter("/*")
public class CheckLoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req=(HttpServletRequest)request;
        HttpServletResponse resp=(HttpServletResponse)response;
        String url=req.getRequestURI();
        boolean flag;
        if(url.indexOf("login")==-1&&req.getSession().getAttribute("admin")==null){
            flag=false;
        }else{
            flag=true;
        }
        if(flag)
            chain.doFilter(request,response);
        else{
            //req.setAttribute("errMsg","用户名或者密码错误，请重新登录");
            resp.sendRedirect("login.jsp");
        }

    }

    @Override
    public void destroy() {

    }
}
