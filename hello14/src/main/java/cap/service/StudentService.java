package cap.service;

import cap.util.PageBean;

public interface StudentService {
    PageBean findByPage(int pageNo,int pageSize);
}
