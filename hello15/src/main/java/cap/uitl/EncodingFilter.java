package cap.uitl;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import java.io.IOException;
@WebFilter(urlPatterns = "/*",initParams = @WebInitParam(name = "encoding",value = "UTF-8"))
public class EncodingFilter implements Filter {
    private FilterConfig filterConfig;
    private String encoding=null;
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.filterConfig=filterConfig;

    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        if(encoding==null)
            encoding=filterConfig.getInitParameter("encoding");
        if(encoding!=null){
            request.setCharacterEncoding(encoding);
            response.setContentType("text/html;charset=UTF-8");
        }
        chain.doFilter(request,response);

    }

    @Override
    public void destroy() {

    }
}
