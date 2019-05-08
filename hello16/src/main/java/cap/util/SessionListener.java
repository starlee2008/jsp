package cap.util;

import cap.bean.Admin;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import java.util.HashMap;
import java.util.Map;

@WebListener
public class SessionListener implements HttpSessionAttributeListener {
    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        Object object=event.getValue();
        if(object instanceof Admin){
            Admin admin=(Admin) object;
            HttpSession session=event.getSession();
            Map<String,Object> map= (Map<String, Object>) session.getServletContext().getAttribute("map");
            if(map==null){
                map=new HashMap<>();
                session.getServletContext().setAttribute("map",map);
            }
            //admin.getUsername()->key,session->value
            map.put(admin.getUsername(),session);

        }

    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {

    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {

    }
}
